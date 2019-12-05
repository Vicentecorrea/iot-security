class HomeController < ApplicationController
  def index
    @to_arduinos = ToArduino.last
    if @to_arduinos.nil?
      @to_arduinos = "-,-,-"
    end
    @from_arduinos = FromArduino.last
    if @from_arduinos.nil?
      @from_arduinos = "-,-,-,-,-,-"
    end

    list = @to_arduinos.value.split(",")
    @alarm = list[0]
    @threshold = list[1]
    @nfc = list[2]

    from_list = @from_arduinos.value.split(",")
    @from_alarm = from_list[0]
    @from_threshold = from_list[1]
    @from_temperature = from_list[2]
    @from_humidity = from_list[3]
    @from_smoke = from_list[4]
    @from_water_level = from_list[5]
  end

  def send_params
    puts @alarm
    puts @threshold
    puts @nfc
    result = @alarm + "," + @threshold + "," + @nfc
    ToArduino.create(value: result)
  end

end
