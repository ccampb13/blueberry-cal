class ZellersCongruence
  def self.calculate(m ,y)
    print m
    if m < 3
      y -= 1
      m += 12
    end

    k = y % 100
    j = y / 100
    q = 1 #looking for the first of the month

    h = (q + ((13*(m+1)/5)) + k + (k/4) + (j/4) + (5*j)) % 7
  end
  
end
