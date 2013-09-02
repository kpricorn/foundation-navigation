require_relative './builder'

module FoundationNavigation

  class TitleArea

    include Builder

    def initialize(title: nil, title_link: nil, menu_text: 'Menu', menu_icon: true, &block)
      if block_given?
        self.instance_eval(&block)
      else
        self.instance_eval do
          ul(class: 'title-area') do
            if title.present?
              li(class: 'name') { h1 { a(href: title_link || '#') {  title } } }
            else
              li(class: 'name')
            end

            toggle_opts = { class: 'toggle-topbar' }
            toggle_opts[:class] << ' menu-icon' if menu_icon
            li(toggle_opts) { a(href: '#') { span { menu_text } } }
          end
        end
      end
    end
  end

end
