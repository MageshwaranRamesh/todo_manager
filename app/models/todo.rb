class Todo < ActiveRecord::Base
  def to_pleasentString
    is_completed = completed ? "[x]" : "[]"
    "#{id}. #{due_date} #{todo_text} #{is_completed}"
  end

  def self.overdue
    all.where("due_date < ?", Date.today)
  end
  def self.do_today
    all.where("due_date = ?", Date.today)
  end
  def self.do_later
    all.where("due_date > ?", Date.today)
  end
  def self.completed?
    all.where("completed = ?", true)
  end
  def self.singlecompletd?
    if (completed == true)
      return true
    else
      return false
    end
  end

  def self.notcompleted
    all.where("completed = ?", false)
  end
  def self.count
    Todo.count
  end
end
