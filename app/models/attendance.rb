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

class Attendance < ActiveRecord::Base
  belongs_to :student
end
