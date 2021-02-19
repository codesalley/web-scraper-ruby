require 'open-uri'
require 'Nokogiri'

class Fetch_Internet
  def initialize(uri)
    @uri = uri
  end

  def get_data
    response = URI.open(@uri)
    parse_data(response)

  end

  def parse_data(data_to_parse)
    doc = Nokogiri::HTML(data_to_parse)
  end

end

class Fetch_local
  def initialize(uri, extension)
    @uri = uri
    @extention = extension
  end

  def get_data
    response = File.open(@uri)
    return parse_data(response)
  end

  def parse_data(data_to_parse)
    if @extention == 'HTML'
      return doc = Nokogiri::HTML(data_to_parse)
    elsif @extention == "XML"
      return doc = Nokogiri::XML(data_to_parse)
    end

  end

end

