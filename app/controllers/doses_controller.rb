class DosesController < ApplicationController

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)

    if @dose.save
      redirect_to dose_path(@dose), notice: 'Dose was successfully created.'
    else
      render :new
    end
  end

  def index
    @doses = Dose.all
  end


private

  def dose_params
    params.require(:dose).permit(:name)
  end

end
