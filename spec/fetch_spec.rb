describe 'FetchInternet' do
  let(:fetch_data) {FetchInternet.new('https://rubygems.org/search?query=')}
  describe '#initialize' do
    it 'Initialized with a string/URI' do
      fetch_data
    end
  end
  describe '#fetch_data' do
    
  end
end