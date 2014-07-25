require_relative '../lib/year'

RSpec.describe Year do
  context ".year_header" do
    it "matches cal header for the year 2017" do
      year = Year.new(2017)
      year.year_header.should == '             2017'
    end
  end
end
