class CreateMalts < ActiveRecord::Migration
  def change
    create_table :malts do |t|
      t.string :name
      t.integer :extract
      t.integer :color
      t.timestamps
    end
  end
end
