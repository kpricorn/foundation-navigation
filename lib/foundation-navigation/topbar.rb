require_relative './builder'
require_relative './title_area'
require_relative './menu_group'

module FoundationNavigation
  class Topbar

    include Builder

    def initialize(*args, &block)
      nav(class: 'top-bar') do
        build_subtree(FoundationNavigation::TitleArea, *args)
        section(class: 'top-bar-section') do
          if block_given?
            self.instance_eval(&block)
          end
        end
      end
    end
  end

end
