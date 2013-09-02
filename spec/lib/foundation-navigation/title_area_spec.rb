require 'spec_helper'
require 'padrino-helpers'
require 'foundation-navigation/title_area'

module FoundationNavigation

  describe TitleArea do
    context 'without parameters' do
      it 'renders .title-area > li.name' do
        expect(subject.to_s).to have_tag('ul.title-area > li.name')
      end

      it 'leaves the title empty' do
        expect(subject.to_s).to_not have_tag('ul.title-area > li.name > h1')
      end

      it 'renders .toggle-topbar.menu-icon' do
        expect(subject.to_s).to have_tag('ul.title-area > li.toggle-topbar.menu-icon')
      end

      it 'renders the default Menu text' do
        expect(subject.to_s).to have_tag('ul.title-area > li.toggle-topbar.menu-icon > a') do
          with_tag('span', text: 'Menu')
        end
      end
    end

    context 'with custom menu_text' do
      it 'renders that text' do
        expect(TitleArea.new(menu_text: 'My Menu').to_s).to have_tag('ul.title-area > li.toggle-topbar.menu-icon > a') do
          with_tag('span', text: 'My Menu')
        end
      end
    end

    context 'with menu_icon false' do
      it 'renders .toggle-topbar.menu-icon' do
        expect(TitleArea.new(menu_icon: false).to_s).to_not have_tag('ul.title-area > li.menu-icon')
      end
    end

    context 'with only title' do
      it 'renders a h1 with the content of title' do
        expect(TitleArea.new(title: 'title').to_s).to have_tag(
          'ul.title-area > li.name > h1'
        ) do
          with_tag('a', :text => 'title')
        end
      end

      it 'renders # href' do
        expect(TitleArea.new(title: 'title').to_s).to have_tag(
          'ul.title-area > li.name > h1'
        ) do
          with_tag('a', :href => '#')
        end
      end
    end

    context 'with title_link' do
      it 'renders the corresponding link' do
        expect(TitleArea.new(title: 'title', title_link: '/foo').to_s).to have_tag(
          'ul.title-area > li.name > h1'
        ) do
          with_tag('a', :href => '/foo')
        end
      end
    end
  end

end
