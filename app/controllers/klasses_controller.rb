class KlassesController < ApplicationController

  def index
    @klasses = Klass.all
  end

  def new
    @klass = Klass.new
  end 

  def update
    @klass = Klass.find(params[:id])
    @klass.update_attributes(klass_params)
    redirect_to klasses_path
  end

  def edit
    @klass = Klass.find(params[:id])
  end

  def create
    @house = Klass.new(klass_params)
    if @house.save
      redirect_to klasses_path
    else
      render :new
    end
  end

  def destroy
    @klass = Klass.find(params[:id])
    @klass.destroy!
    redirect_to klasses_path
  end

private
  def klass_params
    params.require(:klass).permit(:name)
  end
end
