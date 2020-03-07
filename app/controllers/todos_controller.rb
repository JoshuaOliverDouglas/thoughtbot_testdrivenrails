class TodosController < ApplicationController  
  before_action :authenticate
  
  def index
    @todos = Todo.where(email: session[:email])
  end
  
  def new
    @todo = Todo.new
  end

  def create
    Todo.create(todo_params.merge(email: session[:email]))
    redirect_to todos_path
  end


  private

    def todo_params
      params.require(:todo).permit(:title)
    end
end
  