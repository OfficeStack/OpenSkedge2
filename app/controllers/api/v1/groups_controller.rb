module Api::V1
  class GroupsController < ApiController
    def index
      @groups = Group.all
      render json:  @groups
    end

    def show
      @group = Group.find(params[:id])
      render json: @group
    end

    def create
      @group = Group.new(group_params)

      if @group.save
        render json: @group
      else
        render json: @group.errors.to_json, status: 422
      end
    end

    def update
      @group = Group.find(params[:id])

      if @group.update(group_params)
        render json: @group
      else
        render json: @group.errors.to_json, status: 422
      end

    end

  private
    def group_params
      params.require(:group).permit([
        :name,
        :description
      ])
    end

  end
end
