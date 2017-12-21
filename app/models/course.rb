class Course < ApplicationRecord
  has_many :teacher_assigments, inverse_of: :course
  has_many :teachers, :through => :teacher_assigments

  extend Enumerize
  enumerize :language, in:[:CZECH, :ENGLISH], predicates: true, default: :CZECH
  enumerize :StudyType, in:[:FULL_TIME, :PART_TIME], predicates: true, default: :FULL_TIME

  validates :title, presence: true
  validates :code, presence: true
end
