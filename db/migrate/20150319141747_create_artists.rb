class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.string :genre
      t.string :instrument
      t.string :location
      t.string :stage_name

      t.timestamps null: false
    end
  end
end
