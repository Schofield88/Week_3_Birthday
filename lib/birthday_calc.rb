require "date"

class Birthday_Calc

  YEAR = 2019

  def initialize(day, month)
    @day = day
    @month = month
  end

  def calculate
    p date = DateTime.now
    p birthday = Date.new(YEAR,@day,@month)
    p days_to_go = (birthday - date).to_i
    days_to_go < 0 ?

  end

end
