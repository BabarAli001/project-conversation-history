class CreateProjectHistory < ActiveRecord::Migration[7.2]
  def change
    create_table :project_histories do |t|
      t.references :project, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.jsonb :modifications, null: false
      t.timestamps
    end
  end
end
