module FoundationNavigation::Topbar

  def top_bar(&block)
    top_bar_div do
      title_area_div do
        name_div(&block)
      end
    end
  end

  def top_bar_div(&block)
    <<-HTML.chomp!
<nav class="top-bar">
    #{capture(&block) if block_given?}
</nav>
    HTML
  end

  def title_area_div(&block)
    <<-HTML.chomp!
<ul class="title-area">
    #{capture(&block) if block_given?}
</ul>
    HTML
  end

  def name_div(&block)
    <<-HTML.chomp!
<li class="name">
    #{capture(&block) if block_given?}
</li>
    HTML
  end

end
