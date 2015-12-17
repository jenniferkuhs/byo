class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :events
has_many :locations

class Events < ActiveRecord::Base
   extend FriendlyId
   friendly_id :sluggable, use: [:slugged, :finders]

   def sluggable
     event.name + " "
 	end
end
end
