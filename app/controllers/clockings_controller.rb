class ClockingsController < ApplicationController
  before_action :authenticate_student!
  before_action :set_clocking, only: %i[show edit update destroy]

  def index
    @clockings = current_student.clockings.includes(subject: :icon_attachment).order(created_at: :DESC)
  end

  def external
    @clockings = current_student.clockings.external.order(created_at: :DESC)
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
        format.html { redirect_to clockings_path, notice: 'Clocking was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @clocking.update(clocking_params)
        format.html { redirect_to clockings_path, notice: 'Clocking was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @clocking.destroy
    respond_to do |format|
      format.html { redirect_to clockings_path, notice: 'Clocking was successfully destroyed.' }
    end
  end

  private

  def set_clocking
    @clocking = current_student.clockings.find(params[:id])
  end

  def clocking_params
    params.require(:clocking).permit(:topic, :details, :duration, :subject_id)
  end
end
