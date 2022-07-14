# frozen_string_literal: true

require_relative "application_recorder/version"
require_relative "application_recorder/info"

require "pry"

module ApplicationRecorder
  class Error < StandardError; end

  class Log
    def self.info(message)
      ApplicationRecorder::Info.new(message).write_log
    end

    def self.warn; end

    def self.fatal; end

    def self.error; end

    def self.debug; end
  end
end
