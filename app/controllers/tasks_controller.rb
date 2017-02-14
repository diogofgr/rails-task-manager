class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    get_task
  end

  def new
    @task = Task.new

  end

  def create
    Task.create(task_params)

    redirect_to tasks_index_path
  end

  def edit
    get_task
  end

  def update
    @task = get_task
    @task.update(task_params)

    redirect_to task_path

  end

  def destroy
    @task = get_task
    @task.destroy

    redirect_to tasks_index_path
  end

  private

  def get_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:description, :done)
  end

end
