require 'minitest/autorun'
require 'minitest/spec'

require 'before' if ENV["BEFORE"]
require 'after' unless ENV["BEFORE"]

describe Person do
  it "has a phone number" do
    person = Person.new(locale: :pt, phone: "555-0342")
    person.full_phone.must_equal "+351 555-0342"
  end
end
