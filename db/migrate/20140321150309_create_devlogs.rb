class CreateDevlogs < ActiveRecord::Migration
  def change
    create_table :devlogs do |t|
      t.text :message
      t.references :project, index: true

      t.timestamps
    end
  end
end
