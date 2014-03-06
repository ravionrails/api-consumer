class Weather < ActiveResource::Base
	
	self.include_format_in_path = false
	self.element_name = ''
	self.site = "http://api.openweathermap.org/data/2.5"

  def self.get_data(query)
    Weather.get(:weather, :q => query)
  end
end
