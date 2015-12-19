require "spec_helper"
require "category"
require "subcategory"

RSpec::Matchers.define :contain_products do |*products|
	match do |category|
		subcategories_products = category.subcategories.map { |sub|
			sub.products
		}
		subcategories_products.flatten!
		expect (subcategories_products & products).to eq products
	end
end