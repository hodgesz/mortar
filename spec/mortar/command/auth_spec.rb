require "spec_helper"
require "mortar/command/auth"

describe Mortar::Command::Auth do
  
  describe "auth:whoami" do
    it "displays the user's email address" do
      Mortar::Auth.should_receive(:user).and_return("sam@mortardata.com")
      stderr, stdout = execute("auth:whoami")
      stderr.should == ""
      stdout.should == <<-STDOUT
sam@mortardata.com
STDOUT
    end
  end
end
