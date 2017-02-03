class CreateHops < ActiveRecord::Migration
  def change
    create_table :hops do |t|
      t.float :alfa_acid
      t.float :beta_acid
      t.float :total_oil
      t.string :model
      t.string :name
      t.timestamps
    end
  end
end
