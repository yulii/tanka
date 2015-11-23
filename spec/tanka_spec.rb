require 'spec_helper'

describe Tanka do

  class User
    attr_reader :name, :state

    def initialize(attributes = {})
      @name  = attributes[:name]
      @state = attributes[:state]
    end
  end

  describe '.build' do
    it do
      expect(Tanka.build(:user).class).to eq(User)
      expect(Tanka.build(:user).name).to  eq(I18n.t('tanka.user.name'))
      expect(I18n.t('tanka.user.state')).to include(Tanka.build(:user).state)
    end
  end
end
