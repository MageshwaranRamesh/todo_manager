class TodosController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    render "index"
    # render plain: Todo.order(:due_date).all.map { |todo| todo.to_pleasentString }.join("\n")
  end

  def show
    id = params[:id]
    todo = Todo.find(id)
    render plain: todo.to_pleasentString
  end

  def add
    todo_text = params[:todo_text]
    due_date = DateTime.parse(params[:due_date1])
    new_todo = Todo.create!(
      todo_text: todo_text,
      due_date: due_date,
      completed: false,
    )
    redirect_to todos_path
  end

  def updatechecked
    id = params[:id]
    todo = Todo.find(id)
    if todo.completed == false
      todo.update!(completed: true)
    else
      todo.update!(completed: false)
    end
    redirect_to todos_path
  end

  def delete
    id = params[:id]
    todo = Todo.find(id)
    todo.destroy
    redirect_to todos_path
  end
end
