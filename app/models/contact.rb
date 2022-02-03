class Contact < ApplicationRecord
    has_many :phones
    belongs_to :user
end
