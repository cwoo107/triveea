class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.datetime :duedate
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
