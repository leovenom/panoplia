class Shott < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  
  mount_uploader :user_shott, UserShottUploader
end
