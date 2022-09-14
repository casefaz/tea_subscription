class CreateTeas < ActiveRecord::Migration[7.0]
  def change
    create_table :teas do |t|
      t.string :name
      t.integer :category
      t.text :description
      t.string :brew_time
      t.integer :brew_temp
      t.string :origin
      t.string :processing_method
      t.datetime :packaged_on
      t.references :farmer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
