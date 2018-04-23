class Employee < User
  has_many :relationships
  has_many :companies, through: :relationships

  devise :database_authenticatable, :confirmable, :invitable, :invite_for => 2.weeks
end
