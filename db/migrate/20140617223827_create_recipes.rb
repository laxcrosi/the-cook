class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.references :user, index: true
      t.string :photo
      t.string :url

      t.timestamps
    end
  end
end
