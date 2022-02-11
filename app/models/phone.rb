class Phone < ApplicationRecord
    belongs_to :contact

    validates :number, presence: true , uniqueness: { scope: :contact_id, case_sensitive: false}, numericality: true
    validates :type_of, presence: true
    # validates :principal, presence: true, uniquiness: { scope: :contact_id } #, length: { minimum: 2 }
    validates :principal, presence: :true, uniqueness: { case_sensitive: false }
end
