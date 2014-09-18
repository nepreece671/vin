#---
# Based on http://www.pragmaticprogrammer.com/titles/rails4 for information.
#---
class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :typo
      t.string :title
      t.string :artist
      t.text :description
      t.string :image_url
      t.decimal :price, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
