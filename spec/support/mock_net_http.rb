require 'net/http'
module Net
  class HTTP < Protocol
    def self.get(uri)
      "{\"likes\":0}"
    end
  end
end
