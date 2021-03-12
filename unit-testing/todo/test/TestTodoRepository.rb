require_relative '../lib/todo/todo'
require_relative '../lib/todo/todoRepository'
require 'test/unit'

class TestTodoRepository < Test::Unit::TestCase

  def test_add
    # Arrange
    todo_repo = Todo::TodoRepository.new
    todo = Todo::Todo.new(1, 'test1', '2020-10-10', '11', 'sms', false)
    # Act
    todo_repo.add(todo)
    # Assert
    assert_kind_of(Todo::Todo, todo_repo.todos_all[0])
  end

  def test_add_throw_argumentError_when_no_todo
    puts 'TestTodoRepository - test_add_throw_argumentError_when_no_todo'
    # Arrange
    todo_repo = Todo::TodoRepository.new
    todo = nil
    # Act and assert
    assert_raise(ArgumentError) {todo_repo.add(todo)}
  end

  def test_remove
    # Arrange
    todo_repo = Todo::TodoRepository.new
    todo_one = Todo::Todo.new(1, 'test1', '2020-10-10', '11', 'sms', false)
    todo_two = Todo::Todo.new(1, 'test2', '2020-10-10', '11', 'sms', false)
    todo_three = Todo::Todo.new(1, 'test1', '2020-10-10', '11', 'sms', false)
    todo_four = Todo::Todo.new(1, 'test2', '2020-10-10', '11', 'sms', false)
    todo_repo.add(todo_one)
    todo_repo.add(todo_two)
    todo_repo.add(todo_three)
    todo_repo.add(todo_four)
    # Act
    todo_repo.remove(todo_two)
    # Assert
    assert_nil(todo_repo.todos_all[3])
    assert_kind_of(Todo::Todo, todo_repo.todos_all[0])
    assert_kind_of(Todo::Todo, todo_repo.todos_all[1])
    assert_kind_of(Todo::Todo, todo_repo.todos_all[2])
  end

end
