module Api::V1
  class TimecardPunchController < ApiController
    def create
      @punch = TimecardPunch.new
      @punch.user_id = params[:user_id]
      @punch.start_datetime = DateTime.now.utc

      if @punch.save
        respond_to do |format|
          format.json { render json: @punch }
          format.html { redirect_to request.referrer }
        end
      else
        respond_to do |format|
          format.json { render json: @punch.errors.to_json, status: 422 }
          format.html { redirect_to request.referrer }
        end
      end
    end

    def destroy
      @punch = TimecardPunch.where(user_id: params[:user_id], end_datetime: nil).first

      unless @punch
        return head :forbidden
      end

      @punch.end_datetime = DateTime.now.utc

      if @punch.save
        respond_to do |format|
          format.json { render json: @punch }
          format.html { redirect_to request.referrer }
        end
      else
        respond_to do |format|
          format.json { render json: @punch.errors.to_json, status: 422 }
          format.html { redirect_to request.referrer }
        end
      end
    end
  end
end
