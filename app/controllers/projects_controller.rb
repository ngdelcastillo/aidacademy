class ProjectsController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [:show, :index]
  def index
    @projects = Project.all.limit(10)
  end

  def create
    @project = current_user.projects.build(params[:project])
  end
end
