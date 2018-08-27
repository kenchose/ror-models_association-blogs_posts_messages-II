class Message < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  validates :author, :message, presence: true
  validates :message, length: { in: 10..1000 }
end
