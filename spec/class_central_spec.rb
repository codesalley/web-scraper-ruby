require 'class_central'

describe 'CentralCourses' do
  let(:course) {CentralCourses.new }
  it 'Fetch data from the internet and return a hash' do
    expect(course.fetch_course).not_to eq(nil)
  end
end
