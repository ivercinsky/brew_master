class CreateHopsRecipes < ActiveRecord::Migration
  def change
    create_table :hops_recipes do |t|
      t.belongs_to :hop, index: true
      t.belongs_to :recipes, index: true
    end
  end
end
