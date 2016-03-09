# == Schema Information
#
# Table name: exams
#
#  id           :integer          not null, primary key
#  subject_name :string
#  marks        :integer
#  total        :integer
#  student_id   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class ExamsController < ApplicationController
  before_action :fetch_student

  def index
    @exams = Exam.all 
  end

  def new
    @exam = Exam.new
  end

  def create
    @exam = Exam.new(exam_params)
    if @exam.save
      flash[:success] = "Successfully added exam marks"
      redirect_to klass_standard_student_exams_path
    else
      flash[:error] = "Oops, its a error"
      render :new
    end

    def show
      @exam = @student.exams.find(params[:id])
    end

    def edit
      @exam = Exam.find(params[:id])
    end

    def update
      @exam = @student.exams.find(params[:id])
      @exam.update_attributes(exam_params)
      redirect_to klass_standard_student_exams_path
    end

    def destroy
      @exam = @student.exams.find(params[:id])
      @exam.destroy!
      redirect_to klass_standard_student_exams_path
    end
  end


  private
  def exam_params
    params.require(:exam).permit(:subject_name, :marks, :total)
  end

  def fetch_student
    @klass = Klass.find(params[:klass_id])
    @standard = @klass.standards.find(params[:standard_id])
    @student = @standard.students.find(params[:student_id])
  end
end
