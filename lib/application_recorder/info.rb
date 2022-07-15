# frozen_string_literal: true

module ApplicationRecorder
  class Info
    attr_reader :message

    def write_log
      File.write("development.log", "#{formatted_message}\n", mode: "a")
    end

    def formatted_message
      "#{DateTime.now.strftime("%Y-%m-%d %H:%M:%S")}::INFO - #{message}"
    end

    def initialize(message = nil)
      @message = message
    end
  end
end
