require 'lib/push'

module Push
  class Instance
    cattr_accessor :instance

    def self.start
      self.instance ||= fork { Push::Server.start }
    end

    def self.stop
      Process.kill('QUIT', self.instance) if self.instance
    end
  end
end

Push::Instance.start

at_exit do
  Push::Instance.stop
end
