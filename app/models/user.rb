class User < ActiveRecord::Base
   attr_accessible :name, :email, :scrambled_password

   validates :email, :name, :presence => true
   #validates :email, :format => {  }

   has_many :notes
end
