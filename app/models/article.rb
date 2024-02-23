class Article < ApplicationRecord
    has_many :comments, dependent: :destroy

    validates :title, presence: true, length: {minimum: 3}
    validates :body, presence: true
    validates :writer_name, presence: true
end
