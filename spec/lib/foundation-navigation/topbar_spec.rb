require 'spec_helper'
require 'padrino-helpers'
require 'foundation-navigation/topbar'

module FoundationNavigation

  describe Topbar do
    describe '#new' do
      context 'without parameters' do
        it 'renders the top-bar nav' do
          expect(subject.to_s).to have_tag('nav.top-bar')
        end

        it 'renders top-bar-section' do
          expect(subject.to_s).to have_tag('nav.top-bar > section.top-bar-section')
        end
      end

      context 'with contain-to-grid true' do
        it 'wraps the top-bar into .contain-to-grid' do
          expect(Topbar.new(contain_to_grid: true).to_s).to have_tag('.contain-to-grid > nav.top-bar')
        end
      end

      context 'with sticky true' do
        it 'wraps the top-bar into .sticky' do
          expect(Topbar.new(sticky: true).to_s).to have_tag('.sticky > nav.top-bar')
        end
      end

      context 'with fixed true' do
        it 'wraps the top-bar into .fixed' do
          expect(Topbar.new(fixed: true).to_s).to have_tag('.fixed > nav.top-bar')
        end
      end

      context 'with combined attributes' do
        it 'combines the passed attributes' do
          expect(Topbar.new(fixed: true, contain_to_grid: true).to_s
                ).to have_tag('.contain-to-grid.fixed > nav.top-bar')
        end
      end
    end
  end
end
