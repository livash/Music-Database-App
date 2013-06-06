class Track < ActiveRecord::Base
   attr_accessible :track_name, :album_id

   validates :track_name, :presence => true
   validates :track_name, :length => {:minimum => 2}
   validates :album_id, :numericality => true

   belongs_to :album
   has_one :band, through: :album
end
