class Dance < ApplicationRecord
  # Validations
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

  # Associations (optional)
  # For example, if a User can practice many dances:
  # has_many :users
  has_and_belongs_to_many :profiles

end
