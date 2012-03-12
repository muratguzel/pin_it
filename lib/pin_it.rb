require "pin_it/version"
begin
  require "active_support/core_ext/object/to_query"
rescue LoadError
  require "active_support/core_ext/object/conversions"
end

module PinIt
  module Helper
    def pin_it_button(options = {})
      %{<a href="http://pinterest.com/pin/create/button/?url=page_url&media=img_url&description=description" class="pin-it-button" count-layout="horizontal">Pin It</a>}
      query_params = options.slice(:url, :media, :description)
      content_tag :a, "Pin It", "href" => "http://pinterest.com/pin/create/button?#{query_params.to_query}", 
                                "class" => "pin-it-button",
                                "count-layout" => "horizontal"
    end
    
    def pin_it_js
      IO.read(File.expand_path("../../vendor/assets/javascripts/pin_it.js", __FILE__))
    end
  end

  if defined? ::Rails::Railtie
    class Railtie < ::Rails::Railtie
      initializer "pin_it.view_helpers" do |app|
        ::ActionView::Base.send :include, PinIt::Helper
      end
    end
  end

  if defined? ::Rails::Engine
    module Rails
      class Engine < ::Rails::Engine
      end
    end
  end
end
