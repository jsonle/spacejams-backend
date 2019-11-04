class User < ApplicationRecord
    has_many :messages
    has_many :chats, through: :messages
    belongs_to :room, optional: true
end
