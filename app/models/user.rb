class User < ApplicationRecord
    has_many :contacts
    has_many :phones, through: :contacts

    validates :name, presence: true , length: { minimum: 3 }, uniqueness: true
    validates :age, presence: true
    validates :bio, presence: true , length: { minimum: 10 }
end
