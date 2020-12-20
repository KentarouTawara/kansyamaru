class Post < ApplicationRecord
  validates :name, presence: true, length: { maximum: 75 }
  validates :description, presence: true, length: { maximum: 300 }
end
