require 'pdf_controller'

describe 'PDFController' do
  let(:pdf_controller) {PDFController.new}
  describe '#main_controller' do
    it 'return an array of pdfs and links ' do
      expect(pdf_controller.main_controller).not_to eq(nil)
    end
  end
end