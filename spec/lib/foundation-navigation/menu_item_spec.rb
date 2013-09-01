require 'spec_helper'
require 'padrino-helpers'
require 'foundation-navigation/menu_item'

# <li class="">
#   <a href="http://www.zurb.com/jobs">Job Board</a>
# </li>

module FoundationNavigation

  describe MenuItem do
    describe '#new' do
      it 'renders the a tag' do
        expect(MenuItem.new('Foo', '/foo').to_s).to have_tag(
          'li a',
          text: 'Foo',
          with: {href: '/foo'}
        )
      end
    end
  end

end
