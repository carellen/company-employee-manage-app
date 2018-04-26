class User < ApplicationRecord
  has_many :employees
  has_many :companies, through: :employees

  devise :database_authenticatable, :rememberable, :validatable, :invitable
end
