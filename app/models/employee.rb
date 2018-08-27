class Employee < ApplicationRecord
  extend Enumerize

  belongs_to :user
  belongs_to :company

  enumerize :role, in: [:manager, :actor], default: :manager
end
