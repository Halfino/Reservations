class Student < ApplicationRecord
  has_many :student_assigments, inverse_of: :student
  has_many :courses, through: :student_assigments

  extend Enumerize

  enumerize :StudyType, in:[:FULL_TIME, :PART_TIME], predicates: true, default: :FULL_TIME


  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
end
