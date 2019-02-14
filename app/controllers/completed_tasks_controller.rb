class CompletedTasksController < ApplicationController
  def create
    completed_task = CompletedTask.new(user: current_user, task_id: params[:task_id])
    if completed_task.save
      redirect_to root_path, notice: 'Tarea completada!'
    else
      redirect_to root_path, alert: 'Hubo error, por favor inténtalo de nuevo.'
    end
  end
end
