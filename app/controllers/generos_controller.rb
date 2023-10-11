class GenerosController < ApplicationController
  def index
    @generos = Genero.all; end
  
  def show
    @genero = Genero.find(params[:id]); end
  
  def new
    @genero = Genero.new; end

  def create
    @genero = Genero.new params.require(:genero).permit(:nome)
    if @genero.save
      return redirect_to generos_path
    end
      render :new
  end

  def edit
    @genero = Genero.find(params[:id]); end

  def update
    @genero = Genero.find(params[:id])
    if @genero.update params.require(:genero).permit(:nome)
      return redirect_to generos_path
    end
      render :edit
  end
end