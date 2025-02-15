class Project < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { minimum: 6 }

  enum :status, ["Backlog", "In Progress", "On Hold", "Completed"], default: "Backlog"
end
