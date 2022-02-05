class Contact < ApplicationRecord
    has_many :phones
    belongs_to :user

    validates :name, presence: true, length: { minimum: 3 }, uniqueness: { scope: :user_id }
    validates :birthday, presence: true
end
