module RubyTCC
  # Custom error class for rescuing from all RubyTCC errors
  class Error < StandardError
    # @return [Integer]
    attr_reader :code

    class << self
      # Create a new error from an HTTP response
      #
      # @param response [RestClient::Response]
      # @return [RubyTCC::Error]
      def from_response(response)
        message, code = parse_error(response.body)
        new(message, response.response_headers, code)
      end

    private

      def parse_error(body)
        if body.nil?
          ['', nil]
        elsif body[:error]
          [body[:error], nil]
        elsif body[:errors]
          extract_message_from_errors(body)
        end
      end

      def extract_message_from_errors(body)
        first = Array(body[:errors]).first
        if first.is_a?(Hash)
          [first[:message].chomp, first[:code]]
        else
          [first.chomp, nil]
        end
      end
    end

    # Initializes a new Error object
    #
    # @param message [Exception, String]
    # @param code [Integer]
    # @return [RubyTCC::Error]
    def initialize(message = '', code = nil)
      super(message)
      @code = code
    end

    ConfigurationError = Class.new(::ArgumentError)

    # Raised when RubyTCC returns a 4xx HTTP status code
    ClientError = Class.new(self)

    # Raised when RubyTCC returns the HTTP status code 408
    RequestTimeout = Class.new(ClientError)

    # Raised when the result is not "Success"
    ResultError = Class.new(self)
  end
end