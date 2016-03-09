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

require 'test_helper'

class ExamsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
end
