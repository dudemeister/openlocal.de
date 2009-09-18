class Newspaper < ActiveRecord::Base
  
  has_many :issues
  
end
