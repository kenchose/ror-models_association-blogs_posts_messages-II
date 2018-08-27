class User < ActiveRecord::Base
    has_many :posts
    has_many :messages
    has_many :owners
    has_many :blogs, through: :owners
    has_many :blogs, through: :posts
    validates :first_name, :email_address, :last_name, presence: true
    validates_format_of :email_address, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
