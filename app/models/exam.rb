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

class Exam < ActiveRecord::Base
  belongs_to :student
end
