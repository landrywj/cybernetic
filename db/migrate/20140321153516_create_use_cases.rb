class CreateUseCases < ActiveRecord::Migration
  def change
    create_table :use_cases do |t|
      t.string :user
      t.text :story
      t.references :project, index: true

      t.timestamps
    end
  end
end
