require 'tanka/factory/base'
require 'tanka/factory/numeric'
require 'tanka/factory/string'
require 'i18n'

root = File.expand_path('../../../', __FILE__)
I18n.load_path += Dir[File.join(root, 'config', 'locales', '**', '*.yml')]

module Tanka
  class Factory
    attr_reader :name

    def initialize(name)
      @name = name.to_s
    end

    def build
      factory_name.new(generate)
    end

    private

    def factory_name
      @factory_name ||= Object.const_get(name.capitalize)
    end

    def dictionaries
      @dictionaries ||= ::I18n.t("tanka.#{name}")
    end

    def generate
      {}.tap do |attributes|
        dictionaries.each do |key, value|
          if value.instance_of?(Array)
            attributes[key] = value.sample
          else
            attributes[key] = value
          end
        end
      end
    end
  end
end
