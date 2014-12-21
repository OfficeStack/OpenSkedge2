module Api::V1
  class SchedulesController < ApiController
    def index
      @schedules = Schedule.all
      render json:  @schedules
    end

    def show
      @schedule = Schedule.find(params[:id])
      render json: @schedule
    end

    def create
      @schedule = Schedule.new(schedule_params)

      if @schedule.save
        render json: @schedule
      else
        render json: @schedule.errors.to_json, status: 422
      end
    end

    def update
      @schedule = Schedule.find(params[:id])

      if @schedule.update(schedule_params)
        render json: @schedule
      else
        render json: @schedule.errors.to_json, status: 422
      end

    end

  private
    def schedule_params
      params.require(:schedule).permit([
        :name
      ])
    end

  end
end
