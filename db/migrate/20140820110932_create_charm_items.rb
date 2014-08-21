class CreateCharmItems < ActiveRecord::Migration
  def change
    create_table :charm_items, :primary_key => :Name do |t|
      t.integer :ProductID

      t.timestamps
    end
    change_column :charm_items, :Name, :string
  end
end
