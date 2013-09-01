require_relative './builder'
require_relative './menu_item'
require_relative './divider'

module FoundationNavigation

  class Dropdown < Builder
    def build_subtree(klass, *args)
      @node.children << klass.new(*args).node
    end

    def divider
      build_subtree(Divider)
    end

    def menu_item(title, link, &block)
      build_subtree(MenuItem, title, link)
    end

    def initialize(title, link = '#', &block)
      li(class: 'has-dropdown') do
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
