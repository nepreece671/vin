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
Product.create(:title=> 'Strong Persuader',
  :description=> 
    %{<p>
        Robert Cray
      </p>},
  :image_url=>   'cs.jpg',    
  :price=> 16.00)
# . . .
Product.create(:title=> 'Zebop',
  :description=>
    %{<p>
        Santana
      </p>},
  :image_url=> 'ruby.jpg',
  :price=> 19.95)
# . . .

Product.create(:title=> 'Takin My Time',
  :description=> 
    %{<p>
        <em>Bonnie Raitt</em> Bonnie Raitt
      </p>},
  :image_url=> 'rtp.jpg',
  price=> 14.95)
