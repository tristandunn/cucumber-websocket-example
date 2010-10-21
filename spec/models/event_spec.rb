require 'spec_helper'

describe Event, '.publish' do
  let(:http)  { stub('HTTP', :post => true) }
  let(:event) { {} }

  before do
    Net::HTTP.stubs(:new).returns(http)

    Event.publish(event)
  end

  it 'creates a HTTP connection' do
    Net::HTTP.should have_received(:new).with('127.0.0.1', 4000)
  end

  it 'posts the provided event' do
    http.should have_received(:post).with('/', event.to_json)
  end
end
