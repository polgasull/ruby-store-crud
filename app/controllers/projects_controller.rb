class ProjectsController < ApplicationController
  protect_from_forgery with: :exception

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

end
