class GenresController < ApplicationController
  def index
    @generos = Genre.all; end
  
  def show
    @genero = Genre.find(params[:id])
    @movies = Movie.where(genre_id: @genero.id);
  end
  
  def new
    @genero = Genre.new; end

  def create
    @genero = Genre.new params.require(:genre).permit(:name)
    if @genero.save
      return redirect_to genres_path
    end
      render :new
  end

  def edit
    @genero = Genre.find(params[:id]); end

  def update
    @genero = Genre.find(params[:id])
    if @genero.update params.require(:genre).permit(:name)
      return redirect_to genres_path
    end
      render :edit
  end
end