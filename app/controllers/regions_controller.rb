class RegionsController < ApplicationController
  def index
    @regions = Region.all
  end

  def show
    @region = Region.find(params[:id])
    @houses = @region.houses
    key = ENV["DARK_SKY_KEY"]
    weather = HTTParty.get("https://api.darksky.net/forecast/#{key}/#{@region.latitude},#{@region.longitude}")
    @region.update_attributes({ weather: weather['currently']['summary'], temperature: weather['currently']['temperature'] })
  end
end
