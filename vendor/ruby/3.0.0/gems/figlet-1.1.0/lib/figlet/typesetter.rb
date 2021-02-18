module Figlet
  class Typesetter
    def initialize(font, options = {})
      @font = font

      @smush = options.fetch(:smush) { true }
    end

    def [](str)
      result = []

      str.bytes.each_with_index do |byte, index|
        if @font.has_char?(byte)
          char = @font[byte]
        elsif @font.has_char?(0)
          char = @font[0]
        else
          next
        end

        @font.height.times do |j|
          result[j] = @font.right_to_left? ? "#{char[j]}#{result[j]}" : "#{result[j]}#{char[j]}"
        end

        if @font.old_layout > -1 && index > 0
          diff = -1

          @font.height.times do |j|
            if match = /\S(\s*\x00\s*)\S/.match(result[j])
              len = match[1].length

              diff = (diff == -1 ? len : min(diff, len))
            end
          end

          diff -= 1

          if diff > 0
            @font.height.times do |j|
              if match = /\x00(\s{0,#{diff}})/.match(result[j])
                b = diff - match[1].length

                result[j] = result[j].sub(/\s{0,#{b}}\x00\s{#{match[1].length}}/, "\0")
              end
            end
          end

          smush[result] if @smush
        end
      end

      result.join("\n").gsub(/\0/, '').gsub(@font.hard_blank, ' ')
    end

    private

    def min(a, b)
      a > b ? b : a
    end

    def smush
      @smusher ||= Smusher.new(@font)
    end
  end
end
