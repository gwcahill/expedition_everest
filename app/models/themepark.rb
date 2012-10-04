# == Schema Information
#
# Table name: themeparks
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  location   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Themepark < ActiveRecord::Base
  attr_accessible :location, :name

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
end
