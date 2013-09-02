require_relative './builder'
require_relative './menu_item'
require_relative './divider'

module FoundationNavigation

  class Dropdown

    include Builder

    def initialize(title, link = '#', &block)
      li(class: 'has-dropdown not-click') do
        a(href: link) { title }
        ul(class: 'dropdown') do
          if block_given?
            instance_eval(&block)
          end
        end
      end
    end
  end

end
