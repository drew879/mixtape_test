class MixtapeJoinTables < ActiveRecord::Migration
  def change
    create_table :genres_songs, :id => false do |t|
      t.integer :genre_id
      t.integer :song_id
    end

    create_table :mixtapes_songs, :id => false do |t|
      t.integer :mixtape_id
      t.integer :song_id
    end

    create_table :mixtapes_users, :id => false do |t|
      t.integer :mixtape_id
      t.integer :user_id
    end
  end
end
