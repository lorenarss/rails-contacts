class Phone < ApplicationRecord
    belongs_to :contact

    validates :number, presence: true , length: { minimum: 11 }, uniqueness: { scope: :contact_id}
    validates :type_of, presence: true, length: { minimum: 3 } 
   # validates :principal, presence: true, uniquiness: { scope: :contact_id } #, length: { minimum: 2 }
    validates :principal, presence: :true, uniqueness: true
end
