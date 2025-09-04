# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

exams = [
  {
    title: "New exam",
    description: "Early Childhood Education final Exam",
    pass_grade: 70
  },
  {
    title: "New exam 2",
    description: "Early Childhood Education middle Exam",
    pass_grade: 80
  }
]

exams.each do |exam|
  Exam.create!(exam)
end
