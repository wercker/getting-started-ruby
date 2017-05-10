  require 'spec_helper'

  describe "City API" do
    it "should respond to GET" do
      get '/'
      last_response.should be_ok
    end

    it "should say true is true" do
      true.should be true
    end
  end
