# class ZellersCongruence
#   def self.calculate(m ,y)
#     print m
#     if m < 3
#       y -= 1
#       m += 12
#     end
#
#     k = y % 100
#     j = y / 100
#     q = 1 #looking for the first of the month
#
#     h = (q + ((13*(m+1)/5)) + k + (k/4) + (j/4) + (5*j)) % 7
#   end
#
# end

# class ZellersCongruence
#
#   def self.calculate(m, y)
#
#     if m == 1 || m == 2
#       m += 12
#       y -= 1
#     end
#
#     day = (1 + (((m + 1) * 26) / 10).floor + y + (y/4).floor + 6 * (y/100).floor + (y/400).floor).modulo(7)
#
#     case day
#       when 0 then 6
#       when 1 then 0
#       when 2 then 1
#       when 3 then 2
#       when 4 then 3
#       when 5 then 4
#       else 5
#     end
#   end
# end

class ZellersCongruence
  DAYS_INDEX = [6, 0, 1, 2, 3, 4, 5]

  def self.calculate(month, year)
    if month == 1 || month == 2
      month += 12
      year -= 1
    end
    result = (1 + (((month + 1) * 26) / 10).floor + year + (year/4).floor + 6*(year/100).floor + (year/400).floor) % 7
    return DAYS_INDEX[result]
  end

end
