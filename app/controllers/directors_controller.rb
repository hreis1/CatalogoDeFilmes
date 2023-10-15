class DirectorsController < ApplicationController
  def index
    @diretores = Director.order(:name)
  end
  
  def show
    @diretor = Director.find(params[:id])
    @movies = Movie.where(director_id: @diretor.id);
  end
  
  def new
    @diretor = Director.new; end

  def create
    @director = Director.new params.require(:director).permit(:name, :nationality, :date_of_birth, :genre_id)
    if @director.save
      return redirect_to directors_path
    end
      render :new
  end

  def edit
    @diretor = Director.find(params[:id]); end

  def update
    @diretor = Director.find(params[:id])
    if @diretor.update params.require(:director).permit(:name, :nationality, :date_of_birth, :genre_id)
      return redirect_to director_path(@diretor.id)
    end
      render :edit
  end
end