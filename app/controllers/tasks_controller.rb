class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    get_task
  end

  def new
  end

  def create
    Task.create(description: params[:description])

    redirect_to tasks_index_path
  end

  def edit
    get_task
  end

  def update
  end

  def destroy
  end

  private

  def get_task
    @task = Task.find(params[:id])
  end

end
