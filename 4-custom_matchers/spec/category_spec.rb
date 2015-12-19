require "spec_helper"
require "category"
require "subcategory"
require "custon"


RSpec::Matchers.define :contain_products do |*products|
	match do |category|
		subcategories_products = category.subcategories.map { |sub|
			sub.products
		}
		subcategories_products.flatten!
		
		expect(subcategories_products & products).to eq products
		#expect(subcategories_products & products).to eq products
	end

	failure_message do |category|
		"expect category #{category.name} to contain products #{products}"
	end
end


describe Category do
	it "contains all the products of its subcategories" do
		#criadas categorias
		eletronics  = Category.new("eletronics")
		computers   = Subcategory.new("computers")
		cell_phones = Subcategory.new("cell phones")
		#adicionados produtos às categorias
		computers.add_product("MacBook")
		cell_phones.add_product("IPhone")
		#adicionadas subcategorias
		eletronics.add_subcategories(computers, cell_phones)

		
		#expect(eletronics_products).to include("MacBook","IPhone")
		expect(eletronics).to contain_products("MacBook", "IPhone")

	end
end