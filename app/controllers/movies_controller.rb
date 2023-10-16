class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find_by_id(params[:id])
  end

  def new
    @movie = Movie.new
    @genres = Genre.all
    @directors = Director.all
  end

  def create
    @movie = Movie.new params.require(:movie).permit(:title, :synopsis, :release_year, :origin_country ,:genre_id, :director_id)
    if @movie.release_year > Date.today
      @movie.status = :released
    else
      @movie.status = :not_released
    end
    if @movie.save
      return redirect_to root_path
    end
      render :new
  end

  def edit
    @movie = Movie.find_by_id(params[:id])
    @genres = Genre.all
    @directors = Director.all
  end

  def update
    @movie = Movie.find_by_id(params[:id])
    if @movie.release_year > Date.today
      @movie.status = :released
    else
      @movie.status = :not_released
    end
    if @movie.update params.require(:movie).permit(:title, :synopsis, :release_year, :origin_country,:genre_id, :director_id)
      return redirect_to root_path
    end
      render :edit
  end

  def release
    movie = Movie.find_by_id(params[:id])
    movie.released!
    redirect_to movies_path(movie.id)
  end
end