class Event
  def self.publish(event)
    http = Net::HTTP.new('127.0.0.1', 4000)
    http.post('/', event.to_json)
  end
end
