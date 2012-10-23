class ProjectsController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [:show]
  before_filter :resource, :only => [:show, :edit, :destroy, :update]
  def index
    @projects = current_user.projects.all.limit(10)
  end

  def create
    @project = current_user.projects.build(params[:project])
    if @project.save
      redirect_to projects_path, :notice => "Project #{@project.name} has been created"
    else
      render :action => "new"
    end
  end
end
