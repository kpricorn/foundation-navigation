require_relative './builder'

module FoundationNavigation

  class Divider

    include Builder

    def initialize
      li(class: 'divider')
    end
  end

end
