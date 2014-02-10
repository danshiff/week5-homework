class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :title
      t.integer :year
      t.integer :issue
      t.string :image_url
      t.text :summary

      t.timestamps
    end
  end
end
