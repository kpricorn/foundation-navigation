require 'foundation-navigation/divider'
require 'foundation-navigation/menu_item'
require 'foundation-navigation/dropdown'
require 'foundation-navigation/topbar'

module FoundationNavigation::Helpers

  def topbar(*args, &block)
    FoundationNavigation::Topbar.new(*args, &block)
  end

end
