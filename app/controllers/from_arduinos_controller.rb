class FromArduinosController < ApplicationController
  protect_from_forgery
  before_action :set_from_arduino, only: [:show, :edit, :update, :destroy]

  # GET /from_arduinos
  # GET /from_arduinos.json
  def index
    @from_arduinos = FromArduino.all
  end

  # GET /from_arduinos/1
  # GET /from_arduinos/1.json
  def show
  end

  # GET /from_arduinos/new
  def new
    @from_arduino = FromArduino.new
  end

  # GET /from_arduinos/1/edit
  def edit
  end

  # POST /from_arduinos
  # POST /from_arduinos.json
  def create
    @from_arduino = FromArduino.new(from_arduino_params)

    respond_to do |format|
      if @from_arduino.save
        format.html { redirect_to @from_arduino, notice: 'From arduino was successfully created.' }
        format.json { render :show, status: :created, location: @from_arduino }
      else
        format.html { render :new }
        format.json { render json: @from_arduino.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /from_arduinos/1
  # PATCH/PUT /from_arduinos/1.json
  def update
    respond_to do |format|
      if @from_arduino.update(from_arduino_params)
        format.html { redirect_to @from_arduino, notice: 'From arduino was successfully updated.' }
        format.json { render :show, status: :ok, location: @from_arduino }
      else
        format.html { render :edit }
        format.json { render json: @from_arduino.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /from_arduinos/1
  # DELETE /from_arduinos/1.json
  def destroy
    @from_arduino.destroy
    respond_to do |format|
      format.html { redirect_to from_arduinos_url, notice: 'From arduino was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_from_arduino
      @from_arduino = FromArduino.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def from_arduino_params
      params.require(:from_arduino).permit(:value)
    end
end
