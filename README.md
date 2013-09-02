# Foundation::Navigation

[![Gem Version](https://badge.fury.io/rb/foundation-navigation.png)](http://badge.fury.io/rb/foundation-navigation)
[![Build Status](https://secure.travis-ci.org/kpricorn/foundation-navigation.png)](http://travis-ci.org/kpricorn/foundation-navigation)
[![Dependency Status](https://gemnasium.com/kpricorn/foundation-navigation.png)](https://gemnasium.com/kpricorn/foundation-navigation)
[![Code Climate](https://codeclimate.com/github/kpricorn/foundation-navigation.png)](https://codeclimate.com/github/kpricorn/foundation-navigation)

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'foundation-navigation'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install foundation-navigation

## Usage

    = topbar('Expo') do
      - left do
        - dropdown 'Community', 'http://www.zurb.com/expo/community'  do
          - menu_item 'Forrst', 'http://www.forrst.com'
          - menu_item 'Soapbox', 'http://www.zurb.com/soapbox'
      - right do
        - menu_item 'Courses', '#'
        - dropdown 'Library' do
          - menu_item 'Pattern Tap', 'http://patterntap.com'
          - menu_item 'Word', 'http://www.zurb.com/word'
          - menu_item 'Responsive', 'http://www.zurb.com/responsive'

generates

    <nav class="top-bar">
      <ul class="title-area">
        <li class="name">
          <h1><a href="#">Expo</a></h1>
        </li>
        <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
      </ul>
      
      <section class="top-bar-section">
        <ul class="left">
          <li class="has-dropdown">
            <a href="http://www.zurb.com/expo/community">Community</a>
            <ul class="dropdown">
              <li class=""><a href="http://www.forrst.com">Forrst</a></li>
              <li class=""><a href="http://www.zurb.com/soapbox">Soapbox</a></li>
            </ul>
          </li>
          <li class="">
            <a href="http://www.zurb.com/jobs">Job Board</a>
          </li>
        </ul>
        <ul class="right">
          <li class=""><a href="#">Courses</a></li>
          <li class="has-dropdown">
            <a href="#">Library</a>
            <ul class="dropdown">
              <li class=""><a href="http://patterntap.com">Pattern Tap</a></li>
              <li class=""><a href="http://www.zurb.com/word">Word</a></li>
              <li class=""><a href="http://www.zurb.com/responsive">Responsive</a></li>
            </ul>
          </li>
        </ul>
      </section>
    </nav>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
