# rails-social-share-button [![Gem Version](https://badge.fury.io/rb/rails-social-share-button.svg)](http://badge.fury.io/rb/rails-social-share-button) [![Gem Total Downloads](https://img.shields.io/gem/dt/rails-social-share-button.svg)](https://rubygems.org/gems/rails-social-share-button)

rails-social-share-button is one of the best rails helper gem​ to add social share feature in your Rails app. Include Twitter, Facebook, Weibo, Douban, QQ, Tumblr...

## Installation

Add this line to your application's Gemfile:

    gem 'rails-social-share-button'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails-social-share-button

Generate configuration file:

    $ rails generate rails_social_share_button:install

## Configuration

You can customize `config/initializers/rails_social_share_button.rb` to set the social network sites which you want to display:

```ruby
RailsSocialShareButton.configure do |config|
  config.allow_sites = %w(facebook twitter google_bookmark pinterest telegram reddit tumblr 
                          linkedin telegram whatsapp_app whatsapp_web hacker_news delicious 
                          email vkontakte odnoklassniki xing wechat weibo qq douban)
end
```

## Usage

Step1: Add `//= require rails-social-share-button` or `#= require social-share-button/wechat` in `app/assets/javascripts/application.js`:

```ruby 
//= require rails-social-share-button
//= require rails-social-share-button/wechat # If you gonna use WeChat
```

Step2: Add `*= require rails-social-share-button` in `app/assets/stylesheets/application.css` or `app/assets/stylesheets/application.scss`:

```ruby
*= require rails-social-share-button
```

For Rails 4.1.6:

```ruby
@import "rails-social-share-button";
```

## Documentation

Now you can use `social_share_button_tag` helper method in views to display the social share buttons.

For example:

```ruby
<%= rails_social_share_button_tag(@title) %>
```

You can set title for the special social network:

```ruby
<%= rails_social_share_button_tag(@title, 'data-twitter-title' => 'Title for Twitter') %>
```

You can set the social network sites which you want to display at runtime:

```ruby
<%= rails_social_share_button_tag(@title, allow_sites: %w(facebook twitter)) %>
```

You can set rel attribute:

```ruby
<%= rails_social_share_button_tag(@title, rel: "Tweet") %>
```

You can set the URL that it links to in the content:

```ruby
<%= rails_social_share_button_tag(@title, url: "http://yourapp.com/hello_world") %>
```

```ruby
<%= rails_social_share_button_tag(@title, url: "http://yourapp.com/hello_world", image: "http://yourapp.com/images/hello_world.jpg", desc: "The summary of the content", via: "YourTwitterName") %>
```

For Tumblr there are an extra settings that prefixed with `data-*`:

```ruby
<%= rails_social_share_button_tag(@title, image: "http://yourapp.com/images/hello_world.jpg", 'data-type' => 'photo') %>
<%= rails_social_share_button_tag(@title, 'data-source' => "http://yourapp.com/images/hello_world.jpg", 'data-type' => 'photo') %>
```

The mapping of attributes:

### Facebook

Facebook needs the description added.

```ruby
<%= rails_social_share_button_tag('Share to Facebook', url: course_path(@course), desc: @course.description) %>
```

Note: You need to test from a live site or Facebook will reject it (localhost will not work).

### Custom Icon Size

You can override rails-social-share-button base css to customize the icon size in `app/assets/stylesheets/application.scss`:

```ruby
$size: 24px;

.rails-social-share-button {
  .ssb-icon {
    background-size: $size $size;
    height: $size;
    width: $size;
  }
}
```

## License

[MIT License](https://github.com/Bunlong/rails-social-share-button/blob/master/LICENSE)

Copyright (c) 2019 - Present, [Bunlong VAN](https://github.com/Bunlong) ( Maintainer )
