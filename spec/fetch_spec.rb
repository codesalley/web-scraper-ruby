require 'fetch'

describe 'FetchInternet' do
  let(:fetch_data) { FetchInternet.new('https://rubygems.org/search?query=') }
  describe '#initialize' do
    it 'Initialized with a string/URI' do
      fetch_data
    end
  end
  describe '#fetch_data' do
    it 'return a hash resenting pdf and links to download' do
      expect(fetch_data.fetch_data).to eq({})
    end
  end
  describe '#class_central' do
    it 'return a hash resenting course name and links to course' do
      expect(fetch_data.class_central).to eq({})
    end
  end
  describe '#parse_data' do
    it 'return a hash resenting course name and links to course' do
      data = fetch_data.fetch_data
      expect(fetch_data.parse_data(data)).not_to eq(nil)
    end
  end
end
