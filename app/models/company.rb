class Company < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: true, uniqueness: { case_sensitive: false }

  def should_generate_new_friendly_id?
    name_changed?
  end

end
