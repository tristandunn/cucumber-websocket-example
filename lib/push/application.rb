module Push
  class Application
    def call(environment)
      Push::Server.broadcast(environment["rack.input"].read)

      [200, {}, " "]
    end
  end
end
