json.extract! question, :id, :exam_id, :content, :question_type, :options, :correct_answer, :created_at, :updated_at
json.url question_url(question, format: :json)
