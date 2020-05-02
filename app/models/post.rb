class Post < ActiveRecord::Base
  
  
  validates :title, presence: true
  validates (:content, {:length => { < 250 }})
end
