class ClockingsController < ApplicationController
  before_action :authenticate_student!
  # before_action :for_subject
  before_action :set_clocking, only: %i[show edit update destroy]

  def index
    @clockings = current_student.clockings.includes(:subject)
  end

  def external
    @clockings = current_student.clockings.external
  end

  def new
    @clocking = current_student.clockings.build
  end

  def edit
    @clocking = current_student.clockings.find(params[:id])
  end

  def create
    @clocking = current_student.clockings.build(clocking_params)

    respond_to do |format|
      if @clocking.save
        format.html { redirect_to @clocking, notice: 'Clocking was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @clocking.update(clocking_params)
        format.html { redirect_to @clocking, notice: 'Clocking was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @clocking.destroy
    respond_to do |format|
      format.html { redirect_to clockings_path(@clocking), notice: 'Clocking was successfully destroyed.' }
    end
  end

  private

  # def for_subject
    # @subject = Subject.find(params[:subject_id])
  # end

  def set_clocking
    @clocking = current_student.clockings.find(params[:id])
  end

  def clocking_params
    params.require(:clocking).permit(:topic, :details, :duration, :internal_id, :external_id)
  end
end
