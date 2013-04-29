require 'minitest/spec'
require 'minitest/autorun'

require 'before' if ENV["BEFORE"]
require 'after' unless ENV["BEFORE"]

describe Client do
  let(:manager)    { Manager.new             }
  let(:department) { Department.new(manager) }
  let(:clerk)      { Clerk.new(department)   }

  if ENV["BEFORE"]
    it "wants to know about the manager through a department" do
      client     = Client.new(department, clerk)

      client.department.manager.wont_be_nil
    end
  
  else
    it "should rather be guided by a clerk to access that info" do
      client     = Client.new(clerk)

      client.clerk.manager.wont_be_nil
    end
  end
end
