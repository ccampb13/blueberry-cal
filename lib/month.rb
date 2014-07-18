class Month
  MONTHS = [nil, "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
  end

  def name
    MONTHS[@month]
  end

  def header
    "#{name} #{@year}".center(20).rstrip
  end

  def to_s
    output = header
    output << "\nSu Mo Tu We Th Fr Sa\n"
    output << <<EOS
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30 31
EOS
    output
  end

  def month_length
    leap_year = is_leap_year?
    months_with_31_days = [1,3,5,7,8,10,12]
    months_with_30_days = [4,6,9,11]

    if months_with_31_days.include? @month
      return 31
    elsif months_with_30_days.include? @month
      return 30
    elsif @month == 2 && leap_year
      return 29
    elsif month == 2 && !leap_year
      return 28
    else
      raise NoMonthError, "Month was not found"
    end
  end

  def is_leap_year?
    if @year % 400 == 0
      return true
    elsif @year % 100 == 0
      return false
    elsif @year % 4 == 0
      return true
    else
      return false
    end
  end
end
