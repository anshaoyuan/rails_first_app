class Micropost < ActiveRecord::Base
  attr_accessible :content, :integer, :user_id
end
