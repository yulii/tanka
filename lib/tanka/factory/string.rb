module Tanka
  class Factory
    class String < Base
      def self.generate(size, options = {})
        new(rand(size), options).build
      end

      def self.rand(size)
        ((0..9).to_a + ('a'..'z').to_a + ('A'..'Z').to_a).sample(size).join
      end
    end
  end
end
