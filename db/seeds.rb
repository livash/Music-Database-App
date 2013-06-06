# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

band1 = Band.create!(:band_name => "Hello")
band2 = Band.create!(:band_name => "Yes")
band3 = Band.create!(:band_name => "No")

album1 = Album.create!(:album_name => "Hello 1", :band_id => 1)
album2 = Album.create!(:album_name => "Hello 2", :band_id => 1)

album3 = Album.create!(:album_name => "Yes 1", :band_id => 2)
album4 = Album.create!(:album_name => "Yes 2", :band_id => 2)

album5 = Album.create!(:album_name => "No 1", :band_id => 2)

track1 = Track.create!(:track_name => "Hoho", :album_id => 1)
track2 = Track.create!(:track_name => "Boho", :album_id => 1)
track3 = Track.create!(:track_name => "Woop", :album_id => 1)

