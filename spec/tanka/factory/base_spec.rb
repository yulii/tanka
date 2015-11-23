require 'spec_helper'

describe Tanka::Factory::Base do

  describe '#build' do
    subject { factory.build }

    let(:factory) do
      Tanka::Factory::Base.allocate.tap do |o|
        o.send(:initialize, object, options)
      end
    end
    let(:object) { Object.new }

    context 'when null rate is 0' do
      let(:options) { { null: 0 } }
      it { is_expected.to eq(object) }
    end

    context 'when null rate is 1.0' do
      let(:options) { { null: 1.0 } }
      it { is_expected.to be_nil }
    end
  end
end
