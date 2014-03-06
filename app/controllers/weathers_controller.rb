class WeathersController < ApplicationController

  def search
  	query_string = "London,uk"
    @weather_report = Weather.get(:weather, :q => query_string)
  end

end
