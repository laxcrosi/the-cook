class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :qty
      t.string :type
      t.references :recipe, index: true

      t.timestamps
    end
  end
end
