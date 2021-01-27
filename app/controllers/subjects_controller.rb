class SubjectsController < ApplicationController
  before_action :authenticate_student!
  before_action :set_subject, only: %i[show edit update destroy]

  def index
    @subjects = current_student.subjects
  end

  def all
    @subjects = current_student.subjects
  end

  def select
    @subjects = current_student.subjects
  end

  def external
    @subjects = current_student.subjects
  end

  def show; end

  def new
    @subject = current_student.subjects.new
  end

  def edit
    @subject = current_student.subjects.find(params[:id])
  end

  def create
    @subject = current_student.subjects.build(subject_params)

    respond_to do |format|
      if @subject.save
        format.html { redirect_to @subject, notice: 'Subject was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @subject.update(subject_params)
        format.html { redirect_to @subject, notice: 'Subject was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @subject.destroy
    respond_to do |format|
      format.html { redirect_to subjects_url, notice: 'Subject was successfully destroyed.' }
    end
  end

  private

<<<<<<< HEAD
    def subject_params
      params.require(:subject).permit(:title, :description, :icon)
    end
=======
  def set_subject
    @subject = Subject.find(params[:id])
  end

  def subject_params
    params.require(:subject).permit(:title, :description, :icon)
  end
>>>>>>> main
end
