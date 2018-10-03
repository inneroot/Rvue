# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Schedule.create([
  {
  day: '9/10/2018',
  saints: 'Преставление апостола и евангелиста Иоанна Богослова. Свт. Тихона, патриарха Московского и всея Руси. .',
  color: "red", 
  services: '<p>7:30 Исповедь</p>
            <p>8:00 Часы. Божественная Литургия</p>
            <p>16:30 Исповедь</p>
            <p>17:00 Вечерня и Утреня (полиелей).</p>'
  },
  {
  day: '10/10/2018',
  saints: '<b>Сщмч. Петра, митр. Крутицкого.</b> Мч. Каллистрата.',
  color: "none", 
  services: '<p>7:30 Исповедь</p>
            <p>8:00 Часы. Божественная Литургия</p>
            <p>16:30 Исповедь</p>
            <p>17:00 Вечерня и Утреня (полиелей).</p>'
  },
  {
  day: '11/10/2018',
  saints: 'Прп. Харитона Исповедника. Прпп. схимонаха Кирилла и схимонахини Марии, 
  родителей прп. Сергия Радонежского.',
  color: "none", 
  services: '<p>7:30 Исповедь</p>
  <p>8:00 Часы. Божественная Литургия</p>
  <p>16:30 Исповедь</p>
  <p>17:00 Вечерня и Утреня (полиелей).</p>'
  },
  {
  day: '12/10/2018',
  saints: 'Прп. Кириака отшельника. Прп. Феофана Милостивого. Сщмч.Иоанна, архиеп. Рижского.',
  color: "none", 
  services: '<p>7:30 Исповедь</p>
    <p>8:00 Часы. Божественная Литургия</p>
    <p>16:30 Исповедь</p>
    <p>17:00 Вечерня и Утреня (полиелей).</p>'
  }
])