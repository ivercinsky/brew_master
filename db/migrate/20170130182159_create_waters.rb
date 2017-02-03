class CreateWaters < ActiveRecord::Migration
  def change
    create_table :waters do |t|
      t.string :name
      t.float :alkalinity
      t.float :acidity

      t.timestamps
    end
  end
end
