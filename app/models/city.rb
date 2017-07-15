class City < ApplicationRecord
  belongs_to :country
  validates_uniqueness_of :name
  scope :ordered_name, -> { order(name: :asc) }
end
