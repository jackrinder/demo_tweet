class User < ActiveRecord::Base
  has_many :microposts
  
  attr_accessible :email, :name
  
  validates :name, :presence=>:true
  validates :name, :length=> {:maximum => 100}
end
