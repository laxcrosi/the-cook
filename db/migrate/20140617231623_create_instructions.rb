class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.text :content
      t.references :recipe, index: true

      t.timestamps
    end
  end
end
