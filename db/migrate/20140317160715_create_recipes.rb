class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :technology
      t.string :name
      t.text :procedure

      t.timestamps
    end
    add_index :recipes, :technology
  end
end
