class User < ActiveRecord::Base
  attr_accessible :description, :email, :first_name, :last_name, :password, :password_confirmation, :zipcode
  
  has_secure_password
  validates_presence_of :email, :first_name, :last_name, :password, :password_confirmation, :zipcode
  validates_uniqueness_of :email
  
  has_many :comments
  has_many :positions, :through => :comments
  
end
