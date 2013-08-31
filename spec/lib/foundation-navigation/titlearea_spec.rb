require 'spec_helper'
require 'padrino-helpers'
require 'foundation-navigation/titlearea'

module FoundationNavigation

  describe TitleArea do
    context 'without parameters' do
      it 'renders .title-area > li.name' do
        expect(subject.to_s).to have_tag('ul.title-area > li.name')
      end

      it 'leaves the title empty' do
        expect(subject.to_s).to_not have_tag('ul.title-area > li.name > h1')
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
        expect(TitleArea.new(title: 'title', title_link: '/').to_s).to have_tag(
          'ul.title-area > li.name > h1'
        ) do
          with_tag('a', :href => '/')
        end
      end
    end
  end

end
