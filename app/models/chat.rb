class Chat < ApplicationRecord
  validates :body, presence: true, length: { minimum: 1 }
  validates :name, presence: true, length: { minimum: 1 }
end
