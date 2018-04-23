class Company < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :relationships
  has_many :employees, through: :relationships

  validates :name, presence: true, uniqueness: { case_sensitive: false }

end
