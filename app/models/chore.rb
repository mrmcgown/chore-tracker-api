class Chore < ApplicationRecord

  validates :user, presence: true
  belongs_to :user, optional: true
end
