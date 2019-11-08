class User < ApplicationRecord
    has_many :messages
    belongs_to :room, optional: true
end
