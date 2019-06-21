class Chat < ApplicationRecord
  validates :body, presence: true
  validates :name, presence: true
end
