class Post < ApplicationRecord
  validates :name, presence: true, length: { maximum: 75 }
  validates :description, presence: true, 
    length: { maximum: 300 },
    format: { with: /\A([\s\S]*?ありがとう).*\z/, message: "に「ありがとう」の言葉がほしいです" }
end
