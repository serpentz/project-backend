class Post < ApplicationRecord
    has_many :selected_memes
    has_many :users, through: :selected_memes
    has_many :post_categories
    has_many :categories, through: :post_categories
end
