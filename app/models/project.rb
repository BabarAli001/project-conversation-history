class Project < ApplicationRecord
  belongs_to :user
  has_many :project_histories, dependent: :destroy

  validates :title, presence: true, length: { minimum: 6 }

  enum :status, ["Backlog", "In Progress", "On Hold", "Completed"], default: "Backlog"
end
