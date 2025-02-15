module ProjectUpdates
  class Tracker
    TRACKABLE_ATTRIBUTES = %w[status].freeze
    private_constant :TRACKABLE_ATTRIBUTES

    def self.track_changes(project, user)
      changes = project.previous_changes.slice(*TRACKABLE_ATTRIBUTES)
      return if changes.empty?

      formatted_changes = changes.transform_values do |change|
        {
          from: change[0],
          to: change[1]
        }
      end

      project.project_histories.create!(
        user: user,
        modifications: formatted_changes
      )
    end
  end
end
