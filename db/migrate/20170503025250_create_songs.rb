class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name, default: 0
      t.integer :duration, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
