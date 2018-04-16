class ProjectsController < ApplicationController

  def index
    projects = Project.all
    render json: projects.sort_by { |project| project.created_at }
  end

  def create
    project = Project.new(project_params)
    if project.save
      render json: project #  what is project here?
      serialized_data= ActiveModelSerializers::Adapter::Json.new(ProjectSerializer.new(project)).serializable_hash
      ActionCable.server.broadcast 'projects_channel', serialized_data
      head :ok
    else
      render json: self.errors.full_messages
    end
  end

  def update
    project = Project.find(params[:id])
    if project.update(body: params[:body])
      render json: project
      serialized_data= ActiveModelSerializers::Adapter::Json.new(ProjectSerializer.new(project)).serializable_hash
      ActionCable.server.broadcast 'projects_channel', serialized_data
      head :ok
    else
      render json: self.errors.full_messages
    end
  end

  private
  
  def project_params
    params.require(:project).permit(:title, :body, :user_id)
  end

end
  