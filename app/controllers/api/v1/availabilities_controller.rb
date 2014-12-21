module Api::V1
  class AvailabilitiesController < ApiController
    def index
      @availabilities = Availability.all
      render json:  @availabilities
    end

    def show
      @availability = Availability.find(params[:id])
      render json: @availability
    end

    def create
      @availability = Availability.new(availability_params)

      if @availability.save
        render json: @availability
      else
        render json: @availability.errors.to_json, status: 422
      end
    end

    def update
      @availability = Availability.find(params[:id])

      if @availability.update(availability_params)
        render json: @availability
      else
        render json: @availability.errors.to_json, status: 422
      end

    end

  end

  private
    def availability_params
      params.require(:availability).permit([
        :start_time,
        :end_time,
        :recurrence
      ])
    end
end
