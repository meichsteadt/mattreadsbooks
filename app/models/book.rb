class Book < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :author, :presence => true
  validates :image, :presence => true
end
