module Api
  class ShiftsController < ApplicationController
    def index
      @shifts = Shift.all
      render json:  @shifts
    end

    def show
      @shift = Shift.find(params[:id])
      render json: @shift
    end

    def create
      @shift = Shift.new(shift_params)

      if @shift.save
        render json: @shift
      else
        render json: @shift.errors.to_json, status: 422
      end
    end

    def update
      @shift = Shift.find(params[:id])

      if @shift.update(shift_params)
        render json: @shift
      else
        render json: @shift.errors.to_json, status: 422
      end

    end

  private
    def shift_params
      params.require(:shift).permit([
        :start_time,
        :end_time,
        :recurrence
      ])
    end

  end
end
