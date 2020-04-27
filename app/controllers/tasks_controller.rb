class TasksController < ApplicationController
  def show
    @task = Task.includes(:comments).first
  end
end
