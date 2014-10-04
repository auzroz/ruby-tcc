module RubyTCC
  class Request
    attr_accessor :client, :request_method, :path, :options

    # @param client [RubyTCC::Client]
    # @param request_method [String, Symbol]
    # @param path [String]
    # @param options [Hash]
    # @return [RubyTCC::Request]
    def initialize(client, request_method, path, options = {})
      @client = client
      @request_method = request_method.to_sym
      @path = path
      @options = options
    end

    # @return [Hash]
    def perform
      @client.send(@request_method, @path, @options).body
    end
  end
end