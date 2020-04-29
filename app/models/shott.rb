class Shott < ApplicationRecord
  belongs_to :user
  belongs_to :entity
  has_many :comments, dependent: :destroy
  
  mount_uploader :user_shott, UserShottUploader
  is_impressionable
  acts_as_votable
end
