require_relative '../lib/zellers_congruence'

RSpec.describe ZellersCongruence do
  context ".calculate" do
    it "finds the day of the week when given month and year" do
    z = ZellersCongruence.calculate(2, 2014)
    z.should == 6
    end
  end
end
