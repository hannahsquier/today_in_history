require 'nytimes_api'

class DaysController < ApplicationController

  def index
    @dates = Day.new(2016, 07, 28).get_past_dates
    @nytdata = NYTimesAPI.new
  end
end
