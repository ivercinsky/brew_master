class CreateRecipesSalts < ActiveRecord::Migration
  def change
    create_table :recipes_salts do |t|
      t.belongs_to :salt, index: true
      t.belongs_to :recipes, index: true
    end
  end
end
