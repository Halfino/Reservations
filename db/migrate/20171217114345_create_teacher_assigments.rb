class CreateTeacherAssigments < ActiveRecord::Migration[5.1]
  def change
    create_table :teacher_assigments do |t|
      t.belongs_to :teacher, index: true
      t.belongs_to :course, index: true

    end
  end
end
