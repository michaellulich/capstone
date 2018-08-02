class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :address
      t.string :name
      t.datetime :time
      t.text :description
      t.integer :artist_id

      t.timestamps
    end
  end
end
