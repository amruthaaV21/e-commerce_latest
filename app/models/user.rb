class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
	 :omniauthable, :omniauth_providers => [:google_oauth2, :facebook ]
  has_and_belongs_to_many :roles
  has_and_belongs_to_many :images
  has_and_belongs_to_many :addresses
  has_many :admins
  has_many :buyers
  has_many :sellers
  

def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
      end
  end
end
