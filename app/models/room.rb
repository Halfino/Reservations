class Room < ApplicationRecord
  belongs_to :building
  has_many :lessons, dependent: :destroy

  validates :tite, presence: true
  validates :code, presence: true
end
