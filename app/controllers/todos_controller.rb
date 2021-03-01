class TodosController < ApplicationController
  def index
    render plain: Todo.order(:due_date).all.map { |todo| todo.to_pleasentString }.join("\n")
  end

  def show
    id = params[:id]
    todo = Todo.find(id)
    render plain: todo.to_pleasentString
  end
end
