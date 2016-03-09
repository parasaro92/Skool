# == Schema Information
#
# Table name: attendances
#
#  id         :integer          not null, primary key
#  attendance :boolean
#  date       :date
#  student_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all
    # @standard = @klass.standards.find(params[:id])
    @students = @standard.students.find(params[:student_id])
  end
end
