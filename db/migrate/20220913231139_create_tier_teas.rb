class CreateTierTeas < ActiveRecord::Migration[7.0]
  def change
    create_table :tier_teas do |t|
      t.references :tier, null: false, foreign_key: true
      t.references :tea, null: false, foreign_key: true

      t.timestamps
    end
  end
end
