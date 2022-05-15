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

end

