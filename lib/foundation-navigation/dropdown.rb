require_relative './builder'

module FoundationNavigation

  class Dropdown < Builder
    def initialize(title, link = '#')
      li(class: 'has-dropdown') { a(href: link) { title }}
    end
  end

end
