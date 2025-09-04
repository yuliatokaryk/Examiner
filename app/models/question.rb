class Question < ApplicationRecord
  belongs_to :exam

  VALID_QUESTION_TYPES = %w[multiple_choice text].freeze

  validates :question_type, presence: true, inclusion: { in: VALID_QUESTION_TYPES }
end
