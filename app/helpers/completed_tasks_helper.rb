module CompletedTasksHelper
  def get_tasks_count
    Task.all.count
  end
end
