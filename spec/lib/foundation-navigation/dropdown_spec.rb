require 'spec_helper'
require 'padrino-helpers'
require 'foundation-navigation/dropdown'

# <li class="has-dropdown not-click">
#   <a href="#">Library</a>
#   <ul class="dropdown">
#     ...
#   </ul>
# </li>

module FoundationNavigation

  describe Dropdown do
    describe '#new' do
      context 'with title' do
        it 'renders the li.has-dropdown > a' do
          expect(Dropdown.new('Library').to_s).to have_tag('li.has-dropdown > a', text: 'Library')
        end
      end

      context 'with link' do
        it 'renders the href attribute' do
          expect(Dropdown.new('Library', '/library').to_s).to have_tag('li.has-dropdown > a', with: {href: '/library'})
        end
      end
    end
  end

end
