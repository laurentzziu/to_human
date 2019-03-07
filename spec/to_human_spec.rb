# frozen_string_literal: true

RSpec.describe ToHuman do
  describe 'with Boolean' do
    context 'with FalseClass' do
      let(:false_object) { false }

      it { expect(false_object).to respond_to(:to_human) }
      it { expect(false_object.to_human).to eq('No') }
    end

    context 'with TrueClass' do
      let(:true_object) { true }

      it { expect(true_object).to respond_to(:to_human) }
      it { expect(true_object.to_human).to eq('Yes') }
    end
  end

  describe 'with Nil' do
    context 'with NilClass' do
      let(:nil_object) { nil }

      it { expect(nil_object).to respond_to(:to_human) }
      it { expect(nil_object.to_human).to eq('N/A') }
    end
  end

  describe 'with Other' do
    context 'with Object' do
      let(:object) { Object.new }

      it { expect(object).to respond_to(:to_human) }
      it { expect(object.to_human).to eq(object.to_s) }
    end

    context 'with Integer' do
      let(:integer) { 1 }

      it { expect(integer).to respond_to(:to_human) }
      it { expect(integer.to_human).to eq(integer.to_s) }
    end
  end
end
