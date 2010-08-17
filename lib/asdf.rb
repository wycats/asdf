require "rack"
require "asdf/version"

module Asdf
  class Server < ::Rack::Server
    def app
      Rack::Directory.new(Dir.pwd)
    end
  end
end

