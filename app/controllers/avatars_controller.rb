class AvatarsController < ApplicationController
  before_action :set_avatar, only: [:image_data]

  # POST /avatars
  # POST /avatars.json
  def create
    @avatar = Avatar.new(avatar_params)

    respond_to do |format|
      if @avatar.save
        format.json { render json: @avatar }
      else
        format.json { render json: @avatar.errors, status: :unprocessable_entity }
      end
    end
  end

  def image_data
    send_file @avatar.image.path, disposition: :inline, type: @avatar.image.content_type
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avatar
      @avatar = Avatar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def avatar_params
      params.require(:avatar).permit(:image, :uuid)
    end
end
