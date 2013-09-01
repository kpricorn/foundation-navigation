require_relative './builder'

module FoundationNavigation

  class MenuItem < Builder
    def initialize(title, link, orientation: nil, &block)
      li { a(href: link) { title } }
    end
  end

end
