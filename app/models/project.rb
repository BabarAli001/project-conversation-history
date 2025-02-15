class Project < ApplicationRecord
  belongs_to :user
  has_many :project_histories, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { minimum: 6 }

  enum :status, ["Backlog", "In Progress", "On Hold", "Completed"], default: "Backlog"

  def conversation_items
    (comments + project_histories).sort_by(&:created_at).reverse
  end

  def creater?(user)
    user.id == user_id
  end
end
