class ProjectsController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [:show]
  before_filter :resource, :only => [:show, :edit, :destroy, :update]
  def index
    @projects = current_user.projects.all.order_by(:updated_at => "desc").limit(10)
  end

  def create
    params[:project]["target_date"] = params[:project]["target_date"].to_d  
    @project = current_user.projects.build(params[:project])
    if @project.save
      redirect_to projects_path, :notice => "Project #{@project.name} has been created"
    else
      render :action => "new", :notice => "Yo!"
    end
  end
end
