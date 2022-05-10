class DonationsController < ApplicationController
  def show
  end

  def index
    donations = Donation.all
    render json: donations.to_json
  end
end
