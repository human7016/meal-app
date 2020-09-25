class CreateCuisineFoodstuffs < ActiveRecord::Migration[6.0]
  def change
    create_table :cuisine_foodstuffs do |t|
      t.references :cuisine, foreign_key: true
      t.references :foodstuff, foreign_key: true
      t.timestamps
    end
  end
end
