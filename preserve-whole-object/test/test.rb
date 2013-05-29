require 'minitest/autorun'
require 'minitest/spec'

require 'before' if ENV["BEFORE"]
require 'after' unless ENV["BEFORE"]

describe Store do
  let(:item)  { Item.new "Macbook Pro", 1299.0, Time.new }

  subject { Store.new.tap { |store| store << item } }

  if ENV["BEFORE"]
    it "finds an item in the store" do
      subject.contain?(item.name,item.price,item.date).must_equal true
    end
  else
    it "finds an item in the store" do
      subject.contain?(item).must_equal true
    end
  end
end
