class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :tier, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
