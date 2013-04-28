require 'reel'

module Reef

  def initialize(host, port)
    @server = Reel::Server.supervise(host, port) do |connection|
      while request = connection.request
        status, headers, body = call Rack::MockRequest.env_for(request.url, :method => request.method, :input => request.body)
        response_klass = body.is_a?(Stream) ? StreamResponse : Response
        connection.respond(response_klass.new(status_symbol(status), headers, body))
      end
    end
  end

  def status_symbol(status)
    status.is_a?(Fixnum) ? Http::Response::STATUS_CODES[status].downcase.gsub(/\s|-/, '_').to_sym : status.to_sym
  end

  def terminate
    @server.terminate if @server
  end
    
end
