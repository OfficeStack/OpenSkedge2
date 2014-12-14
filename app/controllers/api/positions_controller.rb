module Api
  class PositionsController < ApplicationController
    def index
      @positions = Position.all
      render json:  @positions
    end

    def show
      @position = Position.find(params[:id])
      render json: @position
    end

    def create
      @position = Position.new(position_params)

      if @position.save
        render json: @position
      else
        render json: @position.errors.to_json, status: 422
      end
    end

    def update
      @position = Position.find(params[:id])

      if @position.update(position_params)
        render json: @position
      else
        render json: @position.errors.to_json, status: 422
      end

    end

  private
    def position_params
      params.require(:position).permit([
        :name,
        :description
      ])
    end

  end
end
