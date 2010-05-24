class User < ActiveRecord::Base
  has_many :photos
  has_many :ratings

  validates_uniqueness_of :email, :username
  validates_presence_of :username, :email, :password, :age
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message=>'This does not look like a valid email address'
  validates_numericality_of :age, :message => 'your age must be a number'
  validates_inclusion_of :age, :in => 18..120, :message => 'You must be over 18 to use this website, you must leave now'
  validates_confirmation_of :password
end
