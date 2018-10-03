class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.date :day
      t.text :saints
      t.string :color
      t.text :services

      t.timestamps
    end
  end
end
