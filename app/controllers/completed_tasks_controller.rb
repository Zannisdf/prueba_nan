class CompletedTasksController < ApplicationController
  before_action :set_completed_task

  def create
    redirect_to root_path, notice: 'Ya marcaste esa actividad como completada!' and return unless set_completed_task.nil?
    completed_task = CompletedTask.new(user: current_user, task_id: params[:id])
    if completed_task.save
      redirect_to root_path, notice: 'Actividad completada!'
    else
      redirect_to root_path, alert: 'Hubo error, por favor inténtalo de nuevo.'
    end
  end

  def destroy
    redirect_to root_path, alert: 'No puedes eliminar una actividad que no has completado!' and return if set_completed_task.nil?
    @completed_task.destroy
    redirect_to root_path, notice: 'La actividad se ha marcado como no completada.'
  end

  private

  def set_completed_task
    @completed_task = CompletedTask.find_by(user: current_user, task_id: params[:id])
  end
end
