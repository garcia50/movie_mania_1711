class DirectorsController < ApplicationController

  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(director_params)
    if @director.save
      flash[:success] = "#{@director} was successfully saved!"
      redirect_to directors_path
    else
      render :new
    end
  end

  private 

  def director_params
    params.require(:director).permit(:name)
  end

end