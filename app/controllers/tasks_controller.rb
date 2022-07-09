class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    #Strong Parameterの記述
    Task.create(task_params)
  end

  #詳細表示アクションを定義
  def show
    @task = Task.find(params[:id])
  end

  #編集アクションを定義
  def edit
    @task = Task.find(params[:id])
  end

  #アップデートアクションを定義
  def update
    task = Task.find(params[:id])
    task.update(task_params)
  end

  #削除アクションを定義
  def destroy
    task = Task.find(params[:id])
    task.destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :content)
  end
end
