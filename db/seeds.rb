# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create!(:name => "olena", :email => "olena@app.io", :scrambled_password => "123")

band1 = Band.create!(:band_name => "Hello", :user_id => 1)
band2 = Band.create!(:band_name => "Yes", :user_id => 1)
band3 = Band.create!(:band_name => "No", :user_id => 1)

album1 = Album.create!(:album_name => "Hello 1", :band_id => 1, :user_id => 1)
album2 = Album.create!(:album_name => "Hello 2", :band_id => 1, :user_id => 1)

album3 = Album.create!(:album_name => "Yes 1", :band_id => 2, :user_id => 1)
album4 = Album.create!(:album_name => "Yes 2", :band_id => 2, :user_id => 1)
album5 = Album.create!(:album_name => "No 1", :band_id => 2, :user_id => 1)

track1 = Track.create!(:track_name => "Hoho", :album_id => 1, :user_id => 1)
track2 = Track.create!(:track_name => "Boho", :album_id => 1, :user_id => 1)
track3 = Track.create!(:track_name => "Woop", :album_id => 1, :user_id => 1)

