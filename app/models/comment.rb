class Comment < ActiveRecord::Base
  attr_accessible :position_id, :post, :user_id
end
