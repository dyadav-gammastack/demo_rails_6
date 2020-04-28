class TasksController < ApplicationController
  def index
    @tasks = Task.includes(:comments)
  end

  def show
    @task = Task.includes(:comments).first
  end
end
