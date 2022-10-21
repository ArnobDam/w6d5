class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end
  
  def show
    @cat = Cat.find_by(id: params[:id])
    if @cat
      render :show
    else
      redirect_to cats_url
    end
  end

  def create

  end

  def update

  end

  def new
    render :new
  end

  def edit

  end

  private
  def cat_params
    params.require(:cats).permit(:name, :birth_date, :color, :sex)
  end

end