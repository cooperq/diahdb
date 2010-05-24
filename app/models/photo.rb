class Photo < ActiveRecord::Base
  has_one :user
  has_many :ratings

  validates_presence_of :path
  validates_uniqueness_of :path, :message => 'this photo is already in the database'
end
