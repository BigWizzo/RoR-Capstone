class ClockingsController < ApplicationController
  before_action :get_subject
  before_action :set_clocking, only: [:show, :edit, :update, :destroy]

  # GET /clockings
  # GET /clockings.json
  def index
    # @clockings = Clocking.all
    @clockings = @subject.clockings
  end

  # GET /clockings/1
  # GET /clockings/1.json
  def show
  end

  # GET /clockings/new
  def new
    # @clocking = Clocking.new
    @clocking = @subject.clockings.build
  end

  # GET /clockings/1/edit
  def edit
  end

  # POST /clockings
  # POST /clockings.json
  def create
    @clocking = @subject.clockings.build(clocking_params)

    respond_to do |format|
      if @clocking.save
        format.html { redirect_to subject_clockings_path(@subject), notice: 'Clocking was successfully created.' }
        format.json { render :show, status: :created, location: @clocking }
      else
        format.html { render :new }
        format.json { render json: @clocking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clockings/1
  # PATCH/PUT /clockings/1.json
  def update
    respond_to do |format|
      if @clocking.update(clocking_params)
        format.html { redirect_to subject_clocking_path(@subject), notice: 'Clocking was successfully updated.' }
        format.json { render :show, status: :ok, location: @clocking }
      else
        format.html { render :edit }
        format.json { render json: @clocking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clockings/1
  # DELETE /clockings/1.json
  def destroy
    @clocking.destroy
    respond_to do |format|
      format.html { redirect_to subject_clockings_path(@subject), notice: 'Clocking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def get_subject
      @subject = Subject.find(params[:subject_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_clocking
      @clocking = @subject.clockings.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clocking_params
      params.require(:clocking).permit(:topic, :details, :duration)
    end
end
