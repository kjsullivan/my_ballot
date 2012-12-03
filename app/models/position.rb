class Position < ActiveRecord::Base
  attr_accessible :description, :name, :note,:id
  
  has_many :comments
  has_many :users, :through => :comments
  
end
