class Album < ActiveRecord::Base
 attr_accessible :album_name, :band_id, :album_release_date, :kind

 validates :album_name, :presence => true
 #validates :band_id, :numericality => true

 belongs_to :band
 has_many :tracks

end
