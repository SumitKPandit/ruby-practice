require 'due/due'

RSpec.describe 'a due summary' do

  # before(:example, do_setup: true) do
  #   puts 'before --'
  #   @due_summary = Due::Due.new('2021-10-11 12:00:00')
  # end

  # after(:example, do_setup: true) do
  #   @due_summary = nil
  # end

  # around(:example, do_setup: true) do |ex|
  #   puts 'around --'
  #   @due_summary = Due::Due.new('2021-10-11 12:00:00')
  #   ex.run
  #   @due_summary = nil
  # end

  let(:due_summary) {Due::Due.new('2021-10-11 12:00:00')}

  context 'when working out the difference', do_setup: true do
    it 'has minutes' do
      # Arrange
      due_summary.now_date_time = Time.parse('2020-10-12 12:00:00')
      # Act
      due_summary.calc_difference
      # Assert
      expect(due_summary.calc_mins_till).to be > 0
    end

    it 'has hours' do
      # Arrange
      due_summary.now_date_time = Time.parse('2020-10-12 12:00:00')
      # Act
      due_summary.calc_difference
      # Assert
      expect(due_summary.calc_hours_till).to(eq(8736))
    end
  end

  context 'when given hardcoded values' do
    it 'has the same minutes' do
      # Arrange
      # Act
      # Assert
      expect(1).to(eq(1))
    end

    it 'has different minutes' do
      # Arrange
      # Act
      # Assert
      expect(1).to_not(eq(2))
    end
  end
end
