class MoviesController < ApplicationController
  def show
    @movie = Movie.find_by_id(params[:id])
  end

  def new
    @movie = Movie.new
    @genres = Genre.all
    @directors = Director.all
  end

  def create
    @movie = Movie.new params.require(:movie).permit(:title, :synopsis, :release_year, :genre_id, :director_id)
    if @movie.save
      return redirect_to movies_path
    end
      render :new
  end
end
