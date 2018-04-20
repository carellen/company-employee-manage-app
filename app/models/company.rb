class Company < ApplicationRecord

  before_save  { self.slug.downcase! }

  validates :name, :slug, presence: true
  validates :slug, uniqueness: { case_sensitive: false }

  def to_param
    slug
  end

end
