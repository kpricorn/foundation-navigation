require_relative './builder'

module FoundationNavigation

  class Divider < Builder
    def initialize
      li(class: 'divider')
    end
  end

end
