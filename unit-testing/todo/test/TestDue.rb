require_relative '../lib/due/due'
require 'test/unit'

class TestDue < Test::Unit::TestCase

  def setup
    puts 'Setup: TestDue Class'
    @due = Due::Due.new('2021-10-11 12:00:00')
  end

  def teardown
    puts 'Teardown: TestDue Class'
    @due = nil
  end

  def test_due_difference_seconds_between_dates
    puts 'TestDue - test_due_difference_seconds_between_dates'
    # Arrange
    @due.now_date_time = Time.parse('2020-12-12 12:00:00')
    # Act
    @due.calc_difference
    # Assert
    assert_equal(26179200.0, @due.difference, "Difference in seconds not as expected!")
  end

  def test_due_difference_minutes_between_dates
    puts 'TestDue - test_due_difference_minutes_between_dates'
    # Arrange
    @due.now_date_time = Time.parse('2020-10-12 12:00:00')
    # Act
    @due.calc_difference
    # Assert
    assert_in_delta(524160, @due.calc_mins_till, 50, "Out of range!")
  end

  def test_due_difference_hours_between_dates
    puts 'TestDue - test_due_difference_hours_between_dates'
    # Arrange
    @due.now_date_time = Time.parse('2020-10-12 12:00:00')
    # Act
    @due.calc_difference
    # Assert
    assert_equal(8736, @due.calc_hours_till)
  end

end
