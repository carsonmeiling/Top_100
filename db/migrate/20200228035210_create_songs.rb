class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.time :length
      t.belongs_to :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
