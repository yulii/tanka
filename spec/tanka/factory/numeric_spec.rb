require 'spec_helper'

describe Tanka::Factory::Numeric do

  describe '.generate' do
    subject { Tanka::Factory::Numeric.generate(range) }

    let(:range) { 1..100 }
    it { is_expected.to be >= 1   }
    it { is_expected.to be <= 100 }
    it { is_expected.to be_a_kind_of(Numeric) }
  end
end
