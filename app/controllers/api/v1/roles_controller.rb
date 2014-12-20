module Api::V1
  class RolesController < ApiController
    def index
      @roles = Role.all
      render json:  @roles
    end

    def show
      @role = Role.find(params[:id])
      render json: @role
    end

    def create
      @role = Role.new(role_params)

      if @role.save
        render json: @role
      else
        render json: @role.errors.to_json, status: 422
      end
    end

    def update
      @role = Role.find(params[:id])

      if @role.update(role_params)
        render json: @role
      else
        render json: @role.errors.to_json, status: 422
      end

    end

  private
    def role_params
      params.require(:role).permit([
        :start_time,
        :end_time,
        :recurrence
      ])
    end

  end
end
