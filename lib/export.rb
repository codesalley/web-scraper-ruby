# frozen_string_literal: true

require 'open-uri'
require 'Nokogiri'
require 'csv'
class Export
  def initialize(data)
    @parsed_data = data
  end

  def search_by_css(search_node)
    data_arr = []
    @parsed_data.css(search_node.to_s).each do |data|
      data_arr << data.content.gsub(/\s+/, " ").strip
    end
    data_arr
  end

  def search_by_tags(search_node)
    data_arr = []
    @parsed_data.xpath(search_node).each do |data|
      data_arr << data.content.gsub(/\s+/, " ").strip
    end
    data_arr
  end

  def search_by_custom_input(input)
    data_arr = []
    @parsed_data.search(input).each do |data|
      data_arr << data.content.gsub(/\s+/, " ").strip
    end
    data_arr
  end

  def export_to_cvs(data)
    CSV.open('scrap.csv', 'w') do |csv|
      csv << data
      data.each do |data_i|
        csv << data_i
      end
    end
  end
end
