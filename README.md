# OpenTelemetry::Instrumentation::Grpc

OpenTelemetry instrumentation for users of the `grpc` gem

> [!WARNING]
> Right now, the gem only instruments outbound requests to gRPC services

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add opentelemetry-instrumentation-grpc

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install opentelemetry-instrumentation-grpc

## Usage

To use the instrumentation, call `use` with the name of the instrumentation:

```ruby
OpenTelemetry::SDK.configure do |c|
  c.use 'OpenTelemetry::Instrumentation::Grpc', {
    peer_service: "Example",
    allowed_metadata_headers: [],
  }
end
```

Alternatively, you can also call `use_all` to install all the available
instrumentation.

```ruby
OpenTelemetry::SDK.configure do |c|
  c.use_all
end
```

You *also* need to make sure your stubs are using the interceptor, e.g.

```ruby
otel = OpenTelemetry::Instrumentation::Grpc.client_interceptor
SomeService::Stub.new(host, credentials, *args, **kwargs, interceptors: [otel])
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hibachrach/opentelemetry-instrumentation-grpc. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/opentelemetry-instrumentation-grpc/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the OpenTelemetry::Instrumentation::Grpc project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/opentelemetry-instrumentation-grpc/blob/main/CODE_OF_CONDUCT.md).
