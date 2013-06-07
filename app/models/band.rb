class Band < ActiveRecord::Base
  attr_accessible :band_name

  validates :band_name, presence: true
  validates :band_name, :length => {:minimum => 2}

  has_many :albums, :dependent => :destroy
  has_many :tracks, through: :albums, source: :tracks
end
