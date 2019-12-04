class ToArduinosController < ApplicationController
  protect_from_forgery
  before_action :set_to_arduino, only: [:show, :edit, :update, :destroy]

  # GET /to_arduinos
  # GET /to_arduinos.json
  def index
    @to_arduinos = ToArduino.all
  end

  # GET /to_arduinos/1
  # GET /to_arduinos/1.json
  def show
  end

  # GET /to_arduinos/new
  def new
    @to_arduino = ToArduino.new
  end

  # GET /to_arduinos/1/edit
  def edit
  end

  # POST /to_arduinos
  # POST /to_arduinos.json
  def create
    @to_arduino = ToArduino.new(to_arduino_params)

    respond_to do |format|
      if @to_arduino.save
        format.html { redirect_to @to_arduino, notice: 'To arduino was successfully created.' }
        format.json { render :show, status: :created, location: @to_arduino }
      else
        format.html { render :new }
        format.json { render json: @to_arduino.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /to_arduinos/1
  # PATCH/PUT /to_arduinos/1.json
  def update
    respond_to do |format|
      if @to_arduino.update(to_arduino_params)
        format.html { redirect_to @to_arduino, notice: 'To arduino was successfully updated.' }
        format.json { render :show, status: :ok, location: @to_arduino }
      else
        format.html { render :edit }
        format.json { render json: @to_arduino.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /to_arduinos/1
  # DELETE /to_arduinos/1.json
  def destroy
    @to_arduino.destroy
    respond_to do |format|
      format.html { redirect_to to_arduinos_url, notice: 'To arduino was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_to_arduino
      @to_arduino = ToArduino.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def to_arduino_params
      params.require(:to_arduino).permit(:value)
    end
end
