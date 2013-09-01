require 'spec_helper'
require 'padrino-helpers'
require 'foundation-navigation/dropdown'

# <li class="has-dropdown not-click">
#   <a href="#">Library</a>
#   <ul class="dropdown">
#    <li><a href="http://www.forrst.com">Forrst</a></li>
#     ...
#   </ul>
# </li>

module FoundationNavigation

  describe Dropdown do
    describe '#new' do
      it 'renders li.has-dropdown > a' do
        expect(
          Dropdown.new('Library').to_s
        ).to have_tag('li.has-dropdown > a', text: 'Library')
      end

      it 'renders li.has-dropdown > ul.dropdown' do
        expect(
          Dropdown.new('Library').to_s
        ).to have_tag('li.has-dropdown > ul.dropdown')
      end

      context 'with link' do
        it 'renders the href attribute' do
          expect(
            Dropdown.new('Library', '/library').to_s
          ).to have_tag('li.has-dropdown > a', with: {href: '/library'})
        end
      end

      context 'with menu_item block' do
        let :dropdown do
          Dropdown.new('Library') do
            menu_item('Link 1', '/link1')
            divider
            menu_item('Link 2', '/link2')
          end.to_s
        end

        it 'renders the nested menu element' do
          expect(dropdown).to have_tag(
              'li.has-dropdown > ul.dropdown > li > a',
              text: 'Link 1',
              with: { href: '/link1' }
            )
        end

        it 'renders the nested divider' do
          expect(dropdown).to have_tag(
              'li.has-dropdown > ul.dropdown > li',
              with: { class: 'divider' }
            )
        end
      end
    end
  end

end
