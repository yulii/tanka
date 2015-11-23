module Tanka
  class Factory
    class Base

      def initialize(object, options)
        @object = object
        @null   = options[:null] || 0
      end

      def build
        return nil if (1.0 - @null) < rand(0..1.0)
        @object
      end
    end
  end
end
