class City < ApplicationRecord
  belongs_to :country
  has_one :continent, through: :country
end
