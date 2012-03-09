require 'spec_helper'

describe PinIt::Helper do
  before(:each) do
    @view = ActionView::Base.new
  end

  describe "#pin_it_button" do
    it "should be mixed into ActionView::Base" do
      ActionView::Base.included_modules.include?(PinIt::Helper).should be_true
    end

    it "should respond to 'pin_it_button' helper" do
      @view.should respond_to(:pin_it_button)
    end
    
    it "should return a pin it button" do
      expected = %{<a href="http://pinterest.com/pin/create/button/?url=page_url&media=img_url&description=description" class="pin-it-button" count-layout="horizontal">Pin It</a>}
      
      @view.pin_it_button(url:"page_url", media: "img_url", description: "description").should_not be_nil
    end
  end
end

