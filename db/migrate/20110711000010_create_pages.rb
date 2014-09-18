#---
# Based on http://www.pragmaticprogrammer.com/titles/rails4 
# & Railscasts-162 for  information.
#---
class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :parent_id
      t.string :name
      t.text :content
      t.timestamps
    end
  end
end
