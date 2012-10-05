# == Schema Information
#
# Table name: attractions
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  totaltime    :integer
#  totallength  :integer
#  yearbuilt    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  themepark_id :integer
#

class Attraction < ActiveRecord::Base
  attr_accessible :name, :totallength, :totaltime, :yearbuilt, :themepark_id

  belongs_to :themepark

  validates :name, presence: true, uniqueness: true
  validates :themepark_id, presence: true
end
