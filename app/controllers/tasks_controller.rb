class TasksController < ApplicationController
before_action :find, only:[:show, :edit, :update, :destroy]
  def index
    @task = Task.all
  end

  def new
    @task = Task.new
  end

  def show

  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit

  end

  def update

    @task.update(task_params)
    @task.save
    redirect_to task_path(@task)
  end
  def destroy

    @task.delete
    redirect_to tasks_path

  end
  private

  def find
    @task = Task.find(params[:id])
  end
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
