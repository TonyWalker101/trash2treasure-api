class DonationsController < ApplicationController
  def show
  end

  def index
    @donations = Donation.all
  end
end
