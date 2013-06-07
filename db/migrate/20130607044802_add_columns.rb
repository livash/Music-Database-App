class AddColumns < ActiveRecord::Migration
  def change
    add_column :bands, :user_id, :integer
    add_column :albums, :user_id, :integer
    add_column :tracks, :user_id, :integer
  end
end
