class Rating < ActiveRecord::Base
  has_one :user
  has_one :photo
  validates_presence_of :rating
  validates_numericality_of :rating
  validates_inclusion_of :rating, :in=>1..10
end
