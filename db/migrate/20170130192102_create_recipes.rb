class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.date :planned_date
      t.date :start_date
      t.string :status

      t.integer :start_water_id, index: true
      t.integer :mash_water_id, index: true
      t.integer :yeast_id, index: true
      t.integer :brewmaster_id, index: true

      t.timestamps

    end

    create_table :recipes_users do |t|
      t.integer :user_id
      t.integer :recipe_id
    end


    create_table :malt_addition_moments do |t|
      t.string :name
    end

    create_table :malt_additions do |t|
        t.integer :malt_id, index: true
        t.integer :recipe_id, index: true
        t.float :amount
        t.integer :malt_addition_moment_id, index: true
    end
  end

end
