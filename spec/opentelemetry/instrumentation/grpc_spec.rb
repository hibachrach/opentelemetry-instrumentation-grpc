# frozen_string_literal: true

RSpec.describe OpenTelemetry::Instrumentation::Grpc do
  it "has a version number" do
    expect(OpenTelemetry::Instrumentation::Grpc::VERSION).not_to be nil
  end
end
