require 'uri'
require 'forwardable'

class Url
  extend Forwardable
  include Comparable

  def_delegators :@uri, :scheme, :host, :port

  def initialize(address)
    @uri = URI(address)
  end

  def query_params
    return {} if @uri.query.nil? || @uri.query.empty?

    URI.decode_www_form(@uri.query).each_with_object({}) do |(k, v), acc|
      acc[k.to_sym] = v
    end
  end

  def query_param(key, default = nil)
    query_params.fetch(key.to_sym, default)
  end

  def <=>(other)
    return nil unless other.is_a?(Url)

    left  = [scheme, host, port, normalized_query(query_params)]
    right = [other.scheme, other.host, other.port, normalized_query(other.query_params)]
    left <=> right
  end

  private

  def normalized_query(hash)
    hash.sort_by { |k, _| k.to_s }
  end
end
