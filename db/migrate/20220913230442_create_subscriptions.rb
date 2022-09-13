class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.float :price
      t.boolean :active
      t.date :date_shipped
      t.integer :frequency

      t.timestamps
    end
  end
end
