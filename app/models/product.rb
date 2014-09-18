#---
# Based on http://www.pragmaticprogrammer.com/titles/rails4 for  information.
#---
class Product < ActiveRecord::Base
  has_many :line_items
  has_many :orders, :through => :line_items
  #...
  before_destroy :ensure_not_referenced_by_any_line_item
  validates :title, :price, :artist,:description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
# 
  validates :title, :uniqueness => true
  validates :image_url, :allow_blank => true, :format => {
    :with =>    %r{\.(gif|tiff|jpg|png)$}i,
    :message => 'must be a URL for GIF, TIFF, JPG or PNG image.'
  }
  validates :title, :length => {:minimum => 1}
  def self.latest
    Product.order('updated_at desc').limit(1).first
  end


  private
    # ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end
end
