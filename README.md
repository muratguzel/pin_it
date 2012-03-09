# PinIt

This gem is a Rails plugin for adding a Pinterest.com "Pin It" button
to your views. 

Pinterest's [“Pin It” Button for Websites](http://pinterest.com/about/goodies/#button_for_websites) page.

NOTE: This gem's authors are not in any way affiliated with Pinterest.

## Installation

Add this line to your application's Gemfile:

    gem 'pin_it'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pin_it

## Usage 

### Rails 2.3.11-ish

After adding the gem to your Rails app and running the bundle command,
you need to add this line to get the small JavaScript component included. 
In your application layout, include this:

    <%= javascript_tag pin_it_js %>

Then, in your views, do something like this:

    <%= pin_it_button :media => image_url(@photo.url)
                      :description => @photo.description,
                      :page_url => photo_url(@photo) %>

### Rails > 3.1 

After adding the gem to your Rails app and running the bundle command,
you need to add this line to get the small JavaScript component included. 
Put it in application.js

    //= require pin_it

Then, in your views, do something like this:

    <%= pin_it_button media: image_url(@photo.url)
                      description: @photo.description,
                      page_url: photo_url(@photo) %>


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
