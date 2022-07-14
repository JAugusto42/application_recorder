# frozen_string_literal: true

RSpec.describe ApplicationRecorder do
  it "has a version number" do
    expect(ApplicationRecorder::VERSION).not_to be nil
  end

  describe "::Log" do
    context ".info" do
      let(:message) { "log message" }
      let(:new_message) { "other message" }

      before { ApplicationRecorder::Log.info(message) }

      after { File.delete("development.log") }

      it "should create a log file" do
        expect(Dir.glob(File.join(File.expand_path(".", "development.log"))).length).not_to be_zero
      end

      it "should write messages inside log file" do
        file_content = File.read("development.log")
        expect(file_content.size).not_to be_zero
      end
    end
  end
end
