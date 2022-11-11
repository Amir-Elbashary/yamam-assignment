class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]
  before_action :set_dependencies, only: %i[new edit]
  before_action do
    ActiveStorage::Current.host = request.base_url
  end

  def index
    @tasks = Task.ordered
  end

  def show; end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      respond_to do |format|
        format.html {
          redirect_to tasks_path,
          notice: "Task was successfully created."
        }

        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @task.update(task_params)
      redirect_to tasks_path, notice: "Task was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @task.destroy

    respond_to do |format|
      format.html {
        redirect_to tasks_path,
        notice: "Task was successfully destroyed."
      }

      format.turbo_stream
    end
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:project_id, :user_id, :title, :description, :document)
  end

  def set_dependencies
    @projects = Project.all
    @users = User.all
  end
end
