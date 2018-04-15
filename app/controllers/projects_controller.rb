class ProjectsController < ApplicationController

  def index
    projects = Project.all
    render json: projects
  end

  def create
    # (if project already exists)
    # project = Project.find_by(body: project_params[:body])
    # if project
      # user = User.find_by(id: project_params[:user_id])
      # project.users << user
    # else project = Project.new(project_params)
    project = Project.new(project_params)
    if project.save
      serialized_data= ActiveModelSerializers::Adapter::Json.new(ProjectSerializer.new(project)).serializable_hash
      ActionCable.server.broadcast 'projects_channel', serialized_data
      head :ok
    end
  end

  def update
    project = Project.find(params[:id])
    if project.update(body: params[:body])
      render json: project
    else
      render json: self.errors.full_messages
    end
  end

  private
  
  def project_params
    params.require(:project).permit(:title, :body, :user_id)
  end

end
  