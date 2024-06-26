# frozen_string_literal: true

require "opentelemetry"
require "opentelemetry-instrumentation-base"
require "active_support/inflector"

module OpenTelemetry
  module Instrumentation
    # Contains the OpenTelemetry instrumentation for the Gruf gem
    module Grpc
      class Error < StandardError; end

      module_function

      def client_interceptor
        Interceptors::Client.new
      end
    end
  end
end

require_relative "grpc/instrumentation"
require_relative "grpc/interceptors/client"
require_relative "grpc/version"
