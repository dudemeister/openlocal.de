class Issue < ActiveRecord::Base

  belongs_to :newspaper
  has_many :articles

end
