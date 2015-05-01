class ProjectsController < ApplicationController

  def index
    @projects=Project.all
  end

 def show
	@project=Project.find_by(id: params["id"]) 
	@investments = Investment.where(project_id: params["id"])
  end

end
