class PagesController < ApplicationController
  def main
    scheduled=Schedule.order(day: :asc)
    @calendar=[]
    scheduled.each do |oneday|
      calday={mday: oneday.ru_date.upcase, saints: oneday.saints, wday: oneday.getWeekDay.downcase, color: oneday.color, services: oneday.services}
      @calendar << calday
    end
  end
end
