class TeacherAssigment < ApplicationRecord
  belongs_to :teacher
  belongs_to :course
end
