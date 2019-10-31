class Chat < ApplicationRecord
  belongs_to :room
  has_many :messages
  has_many :users, through: :messages
end
