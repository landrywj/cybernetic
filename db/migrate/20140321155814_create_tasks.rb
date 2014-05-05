class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.datetime :duration
      t.references :project, index: true

      t.timestamps
    end
  end
end
