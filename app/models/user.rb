class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
     #     geocoded_by :ip_address,
  			# :latitude => :lat, :longitude => :lon
	    #  after_validation :geocode

         
      #    geocoded_by :address
	     # after_validation :geocode, :if => :address_changed?
         has_many :products
       
end
