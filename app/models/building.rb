class Building < ApplicationRecord
  has_many :rooms, dependent: :destroy

  validates :title, presence: true, uniqueness: true
  validates :code, presence: true, uniqueness: true
end
