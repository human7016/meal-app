class CreateFoodstuffs < ActiveRecord::Migration[6.0]
  def change
    create_table :foodstuffs do |t|
      t.string :name
      t.integer :protein
      t.integer :fat
      t.integer :carbohydrate
      t.integer :vitaminA
      t.integer :vitaminB1
      t.integer :vitaminB2
      t.integer :vitaminC
      t.integer :vitaminD
      t.integer :Na
      t.integer :Ca
      t.integer :Fe
      t.timestamps
    end
  end
end
