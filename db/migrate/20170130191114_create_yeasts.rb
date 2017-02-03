class CreateYeasts < ActiveRecord::Migration
  def change
    create_table :yeasts do |t|
      t.integer :esters
      t.integer :superior_alcohols
      t.integer :residular_sugar
      t.integer :flocculation
      t.string :name
      t.timestamps
    end
  end
end
