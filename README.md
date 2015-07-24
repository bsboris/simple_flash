# SimpleFlash

[![Code Climate](https://codeclimate.com/github/bsboris/simple_flash/badges/gpa.svg)](https://codeclimate.com/github/bsboris/simple_flash)

I18n for flashes in Rails.

## Installation

Add this line to your application's Gemfile:

    gem "simple_flash", "~> 1.0"

And then execute:

    $ bundle

## Usage

SimpleFlash adds two helper methods to your controller: `redirect_to_with_success` and `redirect_to_with_fail`.

`redirect_to_with_*` helpers will automatically find the most suitable message in your localization and sets it as `:notice` or `:alert`. If there is no message defined for the given action, it will cascade up to the root level.

en.yml:

    en:
      success: Done! Your changes have been saved.
      fail: Fail! Your changes hasn't been saved.
      posts:
        update: Post has been updated.

Controller:

    def update
      ...
      if @post.save
        redirect_to_with_success posts_url #=> will render specific message for this action: "Post has been updated."
      else
        redirect_to_with_fail posts_url #=> will render generic message: "Fail! Your changes hasn't been saved."
      end
    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
