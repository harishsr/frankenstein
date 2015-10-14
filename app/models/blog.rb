class Blog < ActiveRecord::Base
  validates :title,   presence: true, length: { in: 3..100 }
  validates :content, presence: true, length: { in: 10..10_000 }
end
