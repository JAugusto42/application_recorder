# frozen_string_literal: true

class ApplicationRecorder::Info
  def initialize(message)
    File.open("development.log", "w") { |f| f.write(message) }
  end
end
