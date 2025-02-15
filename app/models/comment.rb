class Comment < ApplicationRecord
  belongs_to :project
  belongs_to :user

  validates :content, presence: true, length: { minimum: 2 }

  default_scope { order(created_at: :desc) }
end
