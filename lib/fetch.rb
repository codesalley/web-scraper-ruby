require 'byebug'

class FetchInternet
  def initialize(uri)
    @uri = uri
  end

  def fetch_data
    my_hash = Hash.new('not found')
    response = HTTParty.get(@uri)
    data = parse_data(response.body)
    data.xpath('//td//h2//a').each do |d|
      my_hash[d.text] = d.attributes['href'].value
    end
    my_hash
  end

  def class_central
    my_hash = {}
    response = HTTParty.get(@uri)
    data = parse_data(response.body)
    data.xpath('//table//tbody//tr//td//a//span').each_with_index do |_ele, index|
      m_first = '//table//tbody//tr//td//a//span'
      m_second = data.css('div.truncate')[index.to_i].text.gsub(/\s+/, ' ').strip

      unless data.css('div.truncate')[index.to_i].nil?
        my_hash[data.xpath(m_first)[index].text.gsub(/\s+/, ' ').strip] =
          m_second
      end
    end
    my_hash
  end

  def parse_data(data_to_parse)
    Nokogiri::HTML(data_to_parse)
  end
end
