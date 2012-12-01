class User < ActiveRecord::Base
  attr_accessible :description, :email, :first_name, :last_name, :password, :password_confirmation, :zipcode
end
