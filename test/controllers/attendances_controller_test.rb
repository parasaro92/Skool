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

require 'test_helper'

class AttendancesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
