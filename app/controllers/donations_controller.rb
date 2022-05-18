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

    results = []

    
    if defined?(params[:location])
      
      search_coordinates = params[:location]
      donations = Donation.where('available = true')
      
      donations.each do |d|
        donation_coordinates = helpers.coordinates_to_string(d.latitude, d.longitude)
        if helpers.calculate_distance(search_coordinates, donation_coordinates) < 30000
          results.push(d)
        end
      
      end

    end

    # results = Donation.where("name like ?", "%#{params[:name]}%").load
    render json: results.to_json
  end

end
