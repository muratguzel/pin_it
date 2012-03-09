# PinIt

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'pin_it'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pin_it

## Usage

After adding the gem to your Rails app and running the bundle command,
you need to add this line to get the small JavaScript component included. 
Put it in application.js

    //= require pin_it

Then, in your views, do something like this:

    <%= pin_it_button media: image_url(@photo.url)
                      description: @photo.description,
                      url: photo_url(@photo) %>


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
