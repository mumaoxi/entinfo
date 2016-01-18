# Entinfo

Rails gem for 创世漫道短信api

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'entinfo'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install entinfo

## Usage

### Initial config
`config/initializers/entinfo.rb`

```ruby
Entinfo.configure do |config|
  # 运营商分配给您的SN号(帐号)
  config.sn = 'SDK-XXX-000-00000'
  # 运营商分配给您的密码
  config.pwd = '0-0_0-0'
end
```

### Send message

```ruby
Entinfo.send_sms('15200000000','hello【短信签名】')
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/entinfo/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
