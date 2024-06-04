class TaxiridesController < ApplicationController
  def index
    @taxiride = TaxiRide.find(2)
  end
end
