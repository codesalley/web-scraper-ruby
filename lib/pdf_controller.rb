# frozen_string_literal: true

require 'open-uri'
require 'Nokogiri'
require 'csv'
require_relative '../lib/fetch'

# search and exports data

class PDFController

  def main_controller
    arr_of_pdf = []
    (1...10).each do |num|
      programming_pdf = "https://www.computer-pdf.com/programming/?page=#{num}"
      new_programing_pdf = FetchInternet.new(programming_pdf)
      pdf_data = new_programing_pdf.fetch_data
      arr_of_pdf << pdf_data unless pdf_data.empty?
    end
    arr_of_pdf
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
