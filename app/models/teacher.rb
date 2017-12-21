class Teacher < ApplicationRecord
  has_many :lessons, dependent: :destroy
  has_many :teacher_assigments, inverse_of: :teacher
  has_many :courses, :through => :teacher_assigments

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
end
