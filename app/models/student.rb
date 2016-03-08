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

class Student < ActiveRecord::Base
  belongs_to :standard
  has_many :attendance

  validates(:name, presence: true)
  validates(:address, presence: true)
  validates(:standard_id, presence: true)
  # validates(:gender, presence: true)
  validates(:dob, presence: true)
  validates(:fathers_name, presence: true)
  # validates(:phone, presence: true)


end

