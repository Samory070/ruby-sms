class Post < ApplicationRecord
  # Remember to create a migration!
  validates :title, :description, presence: true

  belongs_to :user
end
