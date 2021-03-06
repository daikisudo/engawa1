class Illustrator < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
 devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 attachment :profile_image
 has_many :orders, :dependent => :destroy
 enum is_valid: { Available: true, Invalid: false }

 validates :email, presence: true
 validates :name, presence: true
 validates :illustrator_name, presence: true

def active_for_authentication?
  super && (self.is_valid == "Available")
end
  end

  
