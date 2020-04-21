class Shott < ApplicationRecord
  belongs_to :user
  mount_uploader :user_shott, UserShottUploader
end
