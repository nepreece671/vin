#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
Product.delete_all
Product.create(:title=> 'No Angel',
  :artist=> 'Dido',
  :typo=> 'audio-CD',
  :description=> '',
  :image_url=>   'No Angel.jpg',    
  :price=> 6.66)
# . . .
Product.create(:title=> 'Hot Fuss',
  :artist=> 'Killers',
  :typo=> 'audio-CD',
  :description=>'',
  :image_url=> 'Hot_Fuss.jpg',
  :price=> 6.66)
# . . .
Product.create(:title=> 'In Between Dreams', 
  :artist=> 'Jack Johnson',
  :typo=> 'audio-CD', 
  :description=> '',
  :image_url=> 'In Between Dreams.jpg',
  :price=> 6.66)
# . . .
Product.create(:title=> 'Inner Visions',
  :artist=> 'Stevie Wonder',
  :typo=> 'audio-CD',
  :description=> '',
  :image_url=>   'Inner Visions.jpg',    
  :price=> 6.66)
# . . .
Product.create(:title=> 'The Lion',
  :artist=> 'Yousou N\'Dour',
  :typo=> 'audio-CD',
  :description=>'',
  :image_url=> 'The Lion.jpg',
  :price=> 6.66)
# . . .
Product.create(:title=> 'Urban Hymns', 
  :artist=> 'The Verve',
  :typo=> 'audio-CD', 
  :description=> '',
  :image_url=> 'Urban Hymns.jpg',
  :price=> 6.66)