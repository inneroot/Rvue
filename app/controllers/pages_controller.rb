class PagesController < ApplicationController
  def main
    @calendar = getcalendar(Schedule.order(day: :asc).actual)
  end

  def sunday_school; end

  def priests; end

  def history; end

  def requisites; end

  def contacts; end

  private

  def getcalendar(days)
    calendar = []
    days.each do |day|
      calendar << day.to_obj
    end
    calendar
  end
end
