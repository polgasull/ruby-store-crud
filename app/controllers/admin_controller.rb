class AdminController < ApplicationController
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  def projects
    @projects = Project.all
  end

  def new_project
    @project = Project.new
  end

  def create_project
    @project = Project.new(project_params)
    if @project.save
      redirect_to admin_projects_path
    else
      render :new
    end
  end

  def show_project
    @project = Project.find(params[:id])
  end

  def edit_project
    @project = Project.find(params[:id])
  end

  def update_project
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to admin_projects_path
    else
      render :edit
    end
  end

  def delete_project
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to admin_projects_path
  end

  private

    def project_params
      params.require(:project).permit(:name, :location, :surface, :duration, :description,  :image, :image_second, :image_third)
    end

end
