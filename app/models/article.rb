class Article < ApplicationRecord
    validates :title, presence: true, length: {minimum: 3}
    validates :body, presence: true, length: {maximum: 30}
    validates :writer_name, presence: true
end
