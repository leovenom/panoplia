class Comment < ApplicationRecord
  belongs_to :shott
  belongs_to :user
  belongs_to :entity
end
