class Review < ActiveRecord::Base
  belongs_to :book
  
  validates :review, :presence => true
  validates :author, :presence => true
  validates :tagline, :presence => true
  validates :rating, :presence => true
end
