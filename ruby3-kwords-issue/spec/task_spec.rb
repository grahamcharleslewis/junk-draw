# frozen_string_literal: true

require_relative '../task'

RSpec.describe Task, '#initialize' do
  context 'with keyword args' do
    it 'works!' do
      task = Task.new(1234, 'active', true, false)
      expect(task.id).to eq 1234
    end
  end
end
