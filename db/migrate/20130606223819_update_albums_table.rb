class UpdateAlbumsTable < ActiveRecord::Migration
  def change
    add_column :albums, :kind, :string
  end
end
