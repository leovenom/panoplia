class Entity < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :users
  has_many :shotts, dependent: :destroy
  has_many :comments, dependent: :destroy
  acts_as_voter  
end
