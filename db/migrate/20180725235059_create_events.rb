class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :address
      t.string :name
      t.datetime :time
      t.text :description

      t.timestamps
    end
  end
end
