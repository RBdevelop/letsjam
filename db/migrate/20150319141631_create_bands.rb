class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :band_name
      t.string :genre

      t.timestamps null: false
    end
  end
end
