# frozen_string_literal: true

class Task
  attr_reader :id, :status, :started, :ended

  def initialize(id, status, started, ended)
    @id = id
    @status = status
    @started = started
    @ended = ended
  end
end
