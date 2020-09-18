class CreateCuisines < ActiveRecord::Migration[6.0]
  def change
    create_table :cuisines do |t|
      t.string :image
      t.string :name, null:false
      t.text :recipe
      t.integer :category_id, null:false
      t.timestamps
    end
  end
end
