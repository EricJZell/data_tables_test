class LocationsController < ApplicationController
  def index
    @locations = []
  end

  def store_explorer
    # binding.pry
    @locations = Location.limit(rand(7000))
    render json: {totals: @locations.count, data: @locations}.to_json
  end
end
