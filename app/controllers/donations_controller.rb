class DonationsController < ApplicationController
  
  def new
    user = User.find_by(id: 1)
    donation = user.donations.new(
      name: params[:name],
      description: params[:description],
      condition: params[:condition],
      available: true,
      image: params[:image],
      created_at: Time.now,
      latitude: params[:latitude],
      longitude: params[:longitude]
    )
    donation.save!
  end
  
  def show
  end

  def index
    donations = Donation.where('available = true')
    render json: donations.to_json
  end

  def edit
    donation = Donation.find_by(id: params[:id])
    donation[:available] = false
    donation.save(validate: false)
  end

  def search

    results = Donation.where("available = true")
    
    if params[:location] != nil
      
      search_coordinates = Google::Maps.geocode(params[:location])
      search_latitude = search_coordinates.first.latitude
      search_longitude = search_coordinates.first.longitude

      results = Donation.where(["latitude > ? and latitude < ? and longitude > ? and longitude < ?", 
      search_latitude - 0.3, search_latitude + 0.3, search_longitude - 0.3, search_longitude + 0.3])

    end

    if params[:name] != nil
      results = results.where("name like ?", "%#{params[:name]}%").load
    end

    render json: results.to_json

  end

end
