class CreateExams < ActiveRecord::Migration[8.0]
  def change
    create_table :exams do |t|
      t.string :title
      t.text :description
      t.integer :pass_grade

      t.timestamps
    end
  end
end
