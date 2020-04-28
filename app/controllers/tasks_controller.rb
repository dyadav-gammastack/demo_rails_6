class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)
    redirect_to tasks_path
  end

  def index
    @tasks = Task.includes(:comments).with_rich_text_content_and_embeds
  end

  def show
    @task = Task.includes(:comments).first
  end

  private

  def task_params
    params.require(:task).permit(:name, :content, comments_attributes: [:id, :note, :_destroy])
  end
end
