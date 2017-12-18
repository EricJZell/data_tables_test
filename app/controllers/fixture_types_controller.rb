class FixtureTypesController < ApplicationController
  def index

  end

  def nested_tables
    # binding.pry
    @fixture_types = FixtureType.includes(:locations).limit(100)
    @fixture_types_data = []
    @fixture_types.each do |ft|
      @fixture_types_data << {DT_RowId: ft.id, name: ft.name, location_count: ft.locations.size, locations: ft.locations}
    end
    render json: {totals: @fixture_types.size, data: @fixture_types_data}.to_json
  end
end
