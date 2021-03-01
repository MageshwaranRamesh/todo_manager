class Todo < ActiveRecord::Base
  def to_pleasentString
    is_completed = completed ? "[x]" : "[]"
    "#{id}. #{due_date} #{todo_text} #{is_completed}"
  end
end
