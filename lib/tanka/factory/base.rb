module Tanka
  class Factory
    class Base
      def build
        return nil if (1.0 - @null) < rand(0..1.0)
        @object
      end

      private

      def initialize(object, options)
        @object = object
        @null   = options[:null] || 0
      end
    end
  end
end
