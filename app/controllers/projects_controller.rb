class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit update destroy]

  def index
    @projects = Project.ordered
  end

  def show; end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      respond_to do |format|
        format.html { redirect_to projects_path, notice: "Quote was successfully created." }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @project.update(project_params)
      redirect_to projects_path, notice: "Project was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_path, notice: "Project was successfully destroyed." }
      format.turbo_stream
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name)
  end
end
