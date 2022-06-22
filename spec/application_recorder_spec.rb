# frozen_string_literal: true

RSpec.describe ApplicationRecorder do
  it "has a version number" do
    expect(ApplicationRecorder::VERSION).not_to be nil
  end

  describe "::Log" do
    context ".info" do
      let(:message) { "log message" }

      it "should create a log file" do
        ApplicationRecorder::Log.info(message)
        expect(Dir.glob(File.join(File.expand_path(".", "development.log"))).length).not_to be_zero
      end
    end
  end
end
