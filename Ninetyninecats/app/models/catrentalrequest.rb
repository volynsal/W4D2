class CatRentalRequest < ApplicationRecord
    validates :cat_id, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :status, presence: true, inclusion: true

    belongs_to :cat,
        primary_key: :id,
        foreign_key: :cat_id,
        class_name: :Cat

end