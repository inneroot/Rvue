# == Schema Information
#
# Table name: schedules
#
#  id         :integer          not null, primary key
#  day        :date
#  saints     :text
#  color      :string
#  services   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Schedule < ApplicationRecord
  def ru_date
    months = ['января', 'февраля', 'марта', 'апреля', 'мая', 'июня', 'июля', 'августа', 'сентября', 'октября', 'ноября', 'декабря']
    day.mday.to_s + ' ' + months[day.mon-1] # + ' ' + day.year.to_s + ' г.'
  end

  def getWeekDay
    days = ['Воскресенье', 'Понедельник', 'Вторник', 'Среда', 'Четверг', 'Пятница', 'Суббота']
    days[day.wday]
  end
end
