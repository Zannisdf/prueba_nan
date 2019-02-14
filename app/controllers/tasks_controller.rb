class TasksController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    @users = @task.users
  end
end
