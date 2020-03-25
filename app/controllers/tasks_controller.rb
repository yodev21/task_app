class TasksController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update, :destroy]
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path, notice: '登録が完了しました！'
    else
      flash.now[:danger] = '登録に失敗しました！'
      render :new
    end
  end

  def index
    if params[:end_date]
      @tasks = Task.all.order(end_date: :desc)
    else
      @tasks = Task.latest
    end
  end

  def show
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to tasks_path, notice: '更新に成功しました！'
    else
      flash.now[:danger] = '更新に失敗しました！'
      render :edit
    end
  end
  
  def destroy
    @task.destroy
    redirect_to tasks_path, notice: '削除しました！'
  end

  private 
  def task_params
    params.require(:task).permit(:title, :content)
  end

  def set_params
    @task = Task.find(params[:id])
  end
end
