class Phone < ApplicationRecord
    belongs_to :contact

    validates :number, presence: true , length: { minimum: 11 }
    validates :type_of, presence: true, length: { minimum: 3 }
    validates :principal, presence: true, length: { minimum: 2 }
end