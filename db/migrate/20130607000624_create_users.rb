class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :null => false
      t.string :email, :null => false
      t.string :session_token
      t.string :activation_token
      t.string :scrambled_password
      t.integer :user_status

      t.timestamps
    end
  end
end
