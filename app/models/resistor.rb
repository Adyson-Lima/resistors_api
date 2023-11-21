class Resistor < ApplicationRecord
  validates :res_type, :res_value, presence: true
end
