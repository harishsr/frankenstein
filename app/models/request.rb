class Request < ActiveRecord::Base
  belongs_to :user
  has_many :years, through: :user

  accepts_nested_attributes_for :user
end
