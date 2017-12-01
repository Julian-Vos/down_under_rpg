class Comment < ApplicationRecord
  belongs_to :post

  validates :commenter, :content, presence: true
end
