class Lesson < ApplicationRecord
  belongs_to :teacher
  belongs_to :room

  validates :start_at, presence: true
  validates :end_at, presence: true
end
