require 'thin'
require 'em-websocket'

module Push
  module Server
    def self.broadcast(event)
      connections.each do |connection|
        connection.send(event)
      end
    end

    def self.connections
      @@connections ||= []
    end

    def self.start
      EventMachine.run do
        EventMachine::WebSocket.start(:host => '0.0.0.0', :port => 8080) do |socket|
          socket.onopen do
            Push::Server.connections.push(socket)
          end
          socket.onclose do
            Push::Server.connections.delete(socket)
          end
        end

        Thin::Logging.silent = true
        Thin::Server.start('127.0.0.1', 4000, :daemonize => false) do
          run Push::Application.new
        end
      end
    end
  end
end
