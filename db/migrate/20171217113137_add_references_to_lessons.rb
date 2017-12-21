class AddReferencesToLessons < ActiveRecord::Migration[5.1]
  def change
    add_reference :lessons, :room, foreign_key: true
    add_reference :lessons, :teacher, foreign_key: true
  end
end
