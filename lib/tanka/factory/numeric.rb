module Tanka
  class Factory
    class Numeric < Base
      def self.generate(range, options = {})
        new(rand(range), options).build
      end
    end
  end
end
