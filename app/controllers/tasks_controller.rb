class TasksController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @tasks = Task.all
    @user_tasks = current_user.tasks.pluck(:task_id) if user_signed_in?
  end

  def show
    @task = Task.find(params[:id])
    @users = @task.users
  end
end
