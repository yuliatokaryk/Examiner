class QuestionsController < ApplicationController
  before_action :set_question, only: %i[ show edit update destroy ]

  def index
    @questions = Question.all
  end

  def show
  end

  def new
    @exams = Exam.all
    @question = Question.new
  end

  def edit
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to @question, notice: "Question was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @question.update(question_params)
      redirect_to @question, notice: "Question was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @question.destroy!

    redirect_to questions_path, notice: "Question was successfully destroyed.", status: :see_other
  end

  private
    def set_question
      @question = Question.find(params.expect(:id))
    end

    def question_params
      params.expect(question: [ :exam_id, :content, :question_type, :answer, :correct_answer ])
    end
end
