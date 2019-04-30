# require 'action_view'

class Cat < ApplicationRecord
    # include ActionView::Helpers::DateHelpers

    COLORS = ["black", "white", "orange", "brown"].freeze

    validates :color, :inclusion => {:in => COLORS}, presence: true
    validates :sex, :inclusion => {:in => ['M', 'F']}, presence: true
    validates :birth_date, presence: true
    validates :name, presence: true
    validates :description, presence: true

    has_many :cat_rental_requests,
        primary_key: :id,
        foreign_key: :cat_id,
        class_name: :CatRentalRequest,
        dependent: :destroy

    def age 
        Date.today.year - self.birth_date.year
    end

    

end