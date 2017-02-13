require 'spec_helper'
require 'lib/contador'

describe "Contador:" do
	let(:url) { "http://mineradorx.com" }
	let(:contador) { Contador.new url }
	it "Conta o numero de palavras numa pagina html" do
		expect(contador.count("ClArO")).to eq(10)
end
end
