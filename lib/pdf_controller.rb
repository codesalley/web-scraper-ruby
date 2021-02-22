require 'open-uri'
require 'csv'
require_relative '../lib/fetch'


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
end
