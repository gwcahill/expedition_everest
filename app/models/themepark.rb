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

  has_many :attractions

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true

  def self.get_names
    @names = []
    @name_hash = self.connection.select_all("select name from themeparks")
    @name_hash.count.times.each do |item|
      @names << @name_hash[item]["name"]
    end
    @names
  end

  def self.get_nums
    @nums = []
    @count = 1
    @name_hash = Themepark.connection.select_all("select name from themeparks")
    @name_hash.count.times.each do |item|
      @nums << @count
      @count = @count + 1
    end
    @nums
  end
end
