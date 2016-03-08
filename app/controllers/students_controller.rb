# == Schema Information
#
# Table name: students
#
#  id           :integer          not null, primary key
#  name         :string
#  fathers_name :string
#  gender       :integer
#  dob          :date
#  phone        :string
#  address      :text
#  standard_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class StudentsController < ApplicationController
  before_action :fetch_standard

  def index
    @students = @standard.students.all
  end

  def new 
    @student = @standard.students.new    
  end

  def create
    @student = @standard.students.new(student_params)
    if @student.save
      flash[:success] = "Successfully added a standard."
      redirect_to klass_standard_students_path
    else 
      flash[:error] = "Successfully added a standard."
      render :new
    end
  end

  def edit
    @student = @standard.students.find(params[:id])
  end

  def update
    @student = @standard.students.find(params[:id])
    @student.update_attributes(student_params)
    redirect_to klass_standard_students_path
  end

  def show
    @student = @standard.students.find(params[:id])
  end

  def destroy
    @student = @standard.students.find(params[:id])
    @student.destroy!
    redirect_to klass_standard_students_path
  end

  private
  def fetch_standard
    @klass = Klass.find(params[:klass_id])
    @standard = @klass.standards.find(params[:standard_id])
  end

  def student_params
    params.require(:student).permit(:name, :fathers_name, :gender, :address, :phone, :dob)
  end
end
