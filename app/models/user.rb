class User < ApplicationRecord
    has_many :contacts

    validates :name, presence: true , length: { minimum: 3 }, uniqueness: { case_sensitive: false }
    validates :age, presence: true
    validates :bio, presence: true , length: { minimum: 10 }
end
