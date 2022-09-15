class CreateTiers < ActiveRecord::Migration[7.0]
  def change
    create_table :tiers do |t|
      t.string :name
      t.float :price
      t.datetime :date_shipped
      t.integer :frequency

      t.timestamps
    end
  end
end
