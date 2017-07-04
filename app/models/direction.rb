class Direction < ApplicationRecord
  belongs_to :recipe
  validates :description, :step_number, presence: true
end
