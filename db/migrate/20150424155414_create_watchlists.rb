class CreateWatchMovies < ActiveRecord::Migration
  def change
    create_table :watch_movies do |t|
      t.integer :user_id
      t.string :collectionId

      t.timestamps
    end
    add_index :watch_movies, :user_id
  end
end
