class DonationsController < ApplicationController
  def show
  end

  def index
    donations = Donation.where("available = true")
    render json: donations.to_json
  end
end
