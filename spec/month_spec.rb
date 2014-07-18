require_relative '../lib/month'

RSpec.describe Month do
  context ".header" do
    it "matches cal for December 2012" do
      month = Month.new(12, 2012)
      month.header.should == "   December 2012"
    end
    it "matches cal for July 1901" do
      month = Month.new(07, 1901)
      month.header.should == "     July 1901"
    end
  end
  context ".name" do
    it "translates January" do
      Month.new(1, 2012).name.should == "January"
    end
    it "translates February" do
      Month.new(2, 2012).name.should == "February"
    end
    it "translates March" do
      Month.new(3, 2012).name.should == "March"
    end
    it "translates April" do
      Month.new(4, 2012).name.should == "April"
    end
    it "translates May" do
      Month.new(5, 2012).name.should == "May"
    end
    it "translates June" do
      Month.new(6, 2012).name.should == "June"
    end
    it "translates July" do
      Month.new(7, 2012).name.should == "July"
    end
    it "translates August" do
      Month.new(8, 2012).name.should == "August"
    end
    it "translates September" do
      Month.new(9, 2012).name.should == "September"
    end
    it "translates October" do
      Month.new(10, 2012).name.should == "October"
    end
    it "translates November" do
      Month.new(11, 2012).name.should == "November"
    end
    it "translates December" do
      Month.new(12, 2012).name.should == "December"
    end
  end

  context ".month_length" do
    it "should show January has 31 days in the month" do
      Month.new(01,2012).month_length.should == 31
    end
    it "should show February has 29 days in the month" do
      Month.new(02,2012).month_length.should == 29
    end
    it "should show February has 28 days in the month" do
      Month.new(02,2013).month_length.should == 28
    end
    it "should show April has 30 days in the month" do
      Month.new(04,2012).month_length.should == 30
    end
  end

  context ".is_leap_year?" do
    it "should return true for the year 2000" do
      Month.new(02, 2000).is_leap_year?.should == true
    end
    it "should return false for the year 3000" do
      Month.new(02, 3000).is_leap_year?.should == false
    end
    it "should return false for the year 1800" do
      Month.new(02, 1800).is_leap_year?.should == false
    end
    it "should return true for the year 2016" do
      Month.new(02, 2016).is_leap_year?.should == true
    end
  end
end
