class WeatherController < ApplicationController

  def index

  end

  def search
    cookies[:zipcode] = params[:zipcode]
    @zipcode = params[:zipcode]
    render :sunny
  end

end