class ApplicationController < ActionController::Base
  @tasks_count = Task.all.count
end
