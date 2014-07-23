require_relative './zellers_congruence'

class Month
  MONTHS = [nil, "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  attr_accessor :month, :year

  def initialize(month, year)
    @month = month
    @year = year
  end

  def name
    MONTHS[@month]
  end

  def header
    "#{name} #{@year}".center(20)
  end

  def month_layout
    month_array = [[], [], [], [], [], []]
    month_array = week_array(month_array)
    month_array
  end

  def week_array(array)
    d = 1
    index = ZellersCongruence.calculate(@month, @year)
    x = 7 - index
    x.times do
      array[0].insert(index, d)
      index += 1
      d +=1
    end
    num = 1
    5.times do
      7.times do
        if d <= month_length
          array[num].push(d)
          d += 1
        else
          array[num].push(nil)
        end
      end
      num += 1
    end
    array
  end

  def to_s
    output = header
    output << "\nSu Mo Tu We Th Fr Sa\n"
    month_layout.each do |week|
      week.map! do |day|
        if day == nil
          day = "  "
        else
          day < 10 ? " " + day.inspect : day
        end
      end
      week = week.join(" ")
      output << week + "\n"
    end
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
      raise Error, "Month was not found"
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
