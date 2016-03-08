class AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all
    # @standard = @klass.standards.find(params[:id])
    @students = @standard.students.find(params[:student_id])
  end
end
