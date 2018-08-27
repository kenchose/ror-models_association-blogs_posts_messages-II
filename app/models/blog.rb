class Blog < ActiveRecord::Base
    has_many :posts
    has_many :owners
    has_many :users, through: :owners
    has_many :users, through: :posts
    validates :name, :description, presence: true
    validates :description, length: {in: 20..250}
end
