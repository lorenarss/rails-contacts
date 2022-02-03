class Phone < ApplicationRecord
    belongs_to :contact

    validates :number, presence: true , length: { minimum: 11 }
    validates :type_of, presence: true, length: { minimum: 3 } , uniqueness: true
    validates :principal, presence: true, length: { minimum: 2 }, uniqueness: true
end