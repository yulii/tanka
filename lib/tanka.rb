require 'tanka/version'
require 'tanka/factory'

module Tanka
  def self.build(name)
    Factory.new(name).build
  end
end
