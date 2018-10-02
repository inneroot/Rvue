class PagesController < ApplicationController
  def main
    str="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium, illo"
    @calendar=[]
    sluzhb={ time: "8:00", title: "Часы. Божественная Литургия" }
    sluzhbs=[sluzhb, sluzhb]
    
    1.upto(30).each do |i|
      calday={mday: i, saints: str, services: [sluzhb, sluzhb]}
      @calendar << calday
    end
  end
end
