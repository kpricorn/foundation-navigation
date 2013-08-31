require_relative './builder'

module FoundationNavigation

  class TitleArea < Builder
    def initialize(title: nil, title_link: nil, &block)
      if block_given?
        self.instance_eval(&block)
      else
        self.instance_eval do
          ul_title_area do
            if title.present?
              li_name { h1 { a(href: title_link || '#') {  title } } }
            else
              li_name
            end
          end
        end
      end
    end

    def ul_title_area(&block)
      ul(class: 'title-area', &block)
    end

    def li_name(&block)
      li(class: 'name', &block)
    end
  end

end
