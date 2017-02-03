class CreateHopsForms < ActiveRecord::Migration
  def change
    create_table :hops_forms do |t|
      t.string :form
      t.timestamps
    end

    change_table :hops do |t|
      t.rename :model, :hops_form_id
    end
    change_column :hops, :hops_form_id, :integer
  end
end
