class TasksController < ApplicationController
  before_action :select_task, only: [:update, :destroy, :update_status]

  def index
    tasks_all
  end

  def create
    task = Task.new(task_params)
    if task.save
      tasks_all
    else
      render status: 422, json: task.errors.full_messages
    end
  end

  def update
    if @task.update(task_params)
      tasks_all
    else
      render status: 422, json: @task.errors.full_messages
    end
  end

  def destroy
    @task.destroy
    tasks_all
  end

  def update_status
    @task.update(status: params[:status])
    tasks_all
  end

  private

  def task_params
    params.permit(:name, :explanation, :status).merge(genre_id: params[:genreId], deadline_date: params[:deadlineDate])
  end

  def select_task
    @task = Task.find(params[:id])
  end

  def tasks_all
    @tasks = Task.all
    render :all_tasks
  end
end
