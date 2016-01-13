class User < ActiveRecord::Base
  has_many :requests
  has_many :years
  
  accepts_nested_attributes_for :years
end
