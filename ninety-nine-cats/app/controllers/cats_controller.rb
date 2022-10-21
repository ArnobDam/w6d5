class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end
  
  def show

  end

  def create

  end

  def update

  end

  def new

  end

  def edit

  end



end