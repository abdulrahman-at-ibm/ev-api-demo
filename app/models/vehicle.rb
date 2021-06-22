class Vehicle < ApplicationRecord
  validates :make, presence: true, length: { minimum: 2 }
  validates :model, presence: true, length: { minimum: 2 }
  validates :year, presence: true, length: { minimum: 4 }

  scope :filter_by_make, -> (make) { where make: make }
  scope :filter_by_model, -> (model) { where("model like ?", "#{model}%") }
  scope :filter_by_year, -> (year) { where year: year }
end