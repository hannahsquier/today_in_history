require 'nytimes_api'

class DaysController < ApplicationController

  def index
    @dates = Day.new(2016, 07, 28).get_past_dates
    @dates.each do |date|
    end
  end

  def show
  end
end
