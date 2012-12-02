class Comment < ActiveRecord::Base
  attr_accessible :position_id, :post, :user_id
  
  belongs_to :position
  belongs_to :user
  
end
