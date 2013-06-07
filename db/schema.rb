ActiveRecord::Schema.define(:version => 20130607000624) do

  create_table "albums", :force => true do |t|
    t.string   "album_name"
    t.integer  "band_id"
    t.date     "album_release_date"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "kind"
  end

  create_table "bands", :force => true do |t|
    t.string   "band_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "notes", :force => true do |t|
    t.integer  "track_id",   :null => false
    t.integer  "author_id"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tracks", :force => true do |t|
    t.string   "track_name"
    t.integer  "album_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name",               :null => false
    t.string   "email",              :null => false
    t.string   "session_token"
    t.string   "activation_token"
    t.string   "scrambled_password"
    t.integer  "user_status"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
