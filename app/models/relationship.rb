class Relationship < ActiveRecord::Base
  attr_accessible :followed_id

  belongs_to :follower, class_name: "Attraction"
  belongs_to :followed, class_name: "Themepark"
end
