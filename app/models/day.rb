require 'day'

class Day
  def initialize(year, month, day)
    @year = year
    @month = month
    @day = day

  end

  def get_past_dates
    past_dates = {}
    past_dates[:day] = day
    past_dates[:five_yrs_ago] = five_yrs_ago
    past_dates[:ten_yrs_ago] = ten_yrs_ago
    past_dates[:twenty_five_yrs_ago] = twenty_five_yrs_ago
    past_dates[:fifty_yrs_ago] = fifty_yrs_ago
    past_dates[:hundred_yrs_ago] = hundred_yrs_ago
    past_dates
  end

  private

  def day
    "#{@year}#{two_digitify(@month)}#{two_digitify(@day)}"
  end

  def five_yrs_ago
    "#{@year - 5}#{two_digitify(@month)}#{two_digitify(@day)}"
  end

  def ten_yrs_ago
    "#{@year - 10}#{two_digitify(@month)}#{two_digitify(@day)}"
  end

  def twenty_five_yrs_ago
    "#{@year - 25}#{two_digitify(@month)}#{two_digitify(@day)}"
  end

  def fifty_yrs_ago
    "#{@year - 50}#{two_digitify(@month)}#{two_digitify(@day)}"
  end

  def hundred_yrs_ago
    "#{@year - 100}#{two_digitify(@month)}#{two_digitify(@day)}"
  end

  def two_digitify(int)
    return int.to_s if int.to_s.length > 1
    "0#{int.to_s}"
  end

end