RSpec.describe ToHuman do
  context "Boolean" do
  	context "FalseClass" do
		  it { expect(false).to respond_to(:to_human) }
		  it { expect(false.to_human).to eq("No") }
		end

		context "TrueClass" do
			it { expect(true).to respond_to(:to_human) }
		  it { expect(true.to_human).to eq("Yes") }
		end
	end

	context "Nil" do
		context "NilClass" do
		  it { expect(nil).to respond_to(:to_human) }
		  it { expect(nil.to_human).to eq("N/\A") }
		end
	end
end
