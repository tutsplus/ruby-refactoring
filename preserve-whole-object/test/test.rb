require 'minitest/spec'
require 'minitest/autorun'

require 'before' if ENV["BEFORE"]
require 'after' unless ENV["BEFORE"]

describe Store do
  let(:item)  { Item.new "Macbook Pro", 1299.0, Time.new }

  subject { Store.new.tap { |store| store << item } }

  it "finds an item in the store" do
    subject.contain?(item_name,price,date).must_equal true
  end
end
