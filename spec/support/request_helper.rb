module Requests
  module JsonHelpers
    def json(body)
      JSON.parse(body)
    end
  end
end
