class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :tvmaze, limit: 20, unique: true, index: true, null: false
      t.string :avatar, limit: 240
      t.string :title, limit: 140, index: true, null: false
      t.text :description, null: false
      t.text :genre, array: true, default: []
      t.integer :watchlists_count, index: true
      t.integer :recommendations_count, index: true
      t.boolean :editor_pick, index: true
      t.timestamps
    end
  end
end
