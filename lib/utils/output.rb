require 'rubygems'

module Utils
  class Output
    class << self
      def create(status, object)
          output = {
            :status => status,
            :object => object
          }
          return output
      end
    end
  end
end