module DonationsHelper
  
  Google::Maps.configure do |config|
    config.authentication_mode = Google::Maps::Configuration::API_KEY
    config.api_key = ENV['GOOGLE_MAPS_API_KEY']
  end

  def coordinates_to_string latitude, longitude
    "#{latitude},#{longitude}"
  end

end
