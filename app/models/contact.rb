class Contact < ApplicationRecord
    has_many :phones
    belongs_to :user

    validates :name, presence: true ,length: { minimum: 3 }, uniqueness: { case_sensitive: false }
    validates :birthday, presence: true
end
