class EditsController < ApplicationController

  def create
    # edit = Edit.new(edit_params)
    project = Project.find(edit_params[:project_id])
    # if edit.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(EditSerializer.new(edit)).serializable_hash
      EditsChannel.broadcast_to project, serialized_data
      head :ok
    # end
  end

    private

    def edit_params
      params.require(:edit).permit(:text, :project_id)
    end
end
 