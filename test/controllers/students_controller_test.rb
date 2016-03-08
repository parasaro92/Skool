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

require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
end
