class HomeController < ApplicationController
  def index
    if params[:q] == 'released'
      return @movies = Movie.released
    elsif params[:q] == 'not_released'
      return @movies = Movie.not_released
    end
    @movies = Movie.all
  end
end