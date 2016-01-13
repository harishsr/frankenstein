class Request < ActiveRecord::Base
  belongs_to :user
  has_many :years, through: :user
end
