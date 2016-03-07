# == Schema Information
#
# Table name: standards
#
#  id         :integer          not null, primary key
#  name       :string
#  klass_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class StandardsController < ApplicationController
  before_action :fetch_klass

  def index
    @standards = @klass.standards.all
  end

  def new
    @standard = @klass.standards.new
  end

  def create
    @standard = @klass.standards.new(standard_params)
    if @standard.save
      flash[:success] = "Successfully added a standard."
      redirect_to klass_standards_path
    else
      flash[:error] = "Oops! Looks like you forgot to add a standard level."
      render :new
    end
  end

  def edit
    @standard = Standard.find(params[:id])
  end

  def update
    @standard = Standard.find(params[:id])
    @standard.update_attributes(standard_params)
    redirect_to klass_standards_path
  end

  def destroy
    @standard = Standard.find(params[:id])
    @standard.destroy!
    redirect_to klass_standards_path
  end

  private
  def standard_params
    params.require(:standard).permit(:name)
  end
  def fetch_klass
    @klass = Klass.find(params[:klass_id])
  end
end
