# frozen_string_literal: true

module ApplicationRecorder
  class Info
    attr_reader :message

    def write_log
      File.write("development.log", "#{message}\n", mode: "a")
    end

    def initialize(message = nil)
      @message = message
    end
  end
end
