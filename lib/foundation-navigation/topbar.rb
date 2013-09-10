require_relative './builder'
require_relative './title_area'
require_relative './menu_group'

module FoundationNavigation
  class Topbar

    include Builder

    def navigation(**args, &block)
      nav(class: 'top-bar') do
        build_subtree(FoundationNavigation::TitleArea, **args)
        section(class: 'top-bar-section', &block)
      end
    end

    def initialize(contain_to_grid: false, fixed: false, sticky: true, **args, &block)
      if contain_to_grid || fixed || sticky
        classes = []
        classes << 'contain-to-grid' if contain_to_grid
        classes << 'fixed' if fixed
        classes << 'sticky' if sticky
        div(class: classes.join(' ')) { navigation(**args, &block) }
      else
        navigation(**args, &block)
      end
    end
  end

end
