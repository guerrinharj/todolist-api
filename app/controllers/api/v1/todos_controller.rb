class Api::V1::TodosController < Api::V1::BaseController
  before_action :set_todo, only: [:show, :update, :destroy]

  def index
    @todos = Todo.all
  end

  def show
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      render json: @todo
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:id, :title, :completed)
  end
end
