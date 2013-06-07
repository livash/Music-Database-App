class Note < ActiveRecord::Base
  attr_accessible :body, :author_id, :track_id

  # validates :author_id, :track_id, :presence => true
#   validates :author_id, :track_id, :numericality => true

  belongs_to :track
  belongs_to :author, :class_name => "User"
end
