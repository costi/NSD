# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def page_title
    current_link = menu_items.find{|link| request.path =~ /#{link[:address]}/}
    title = ""
    title += current_link[:text] unless current_link.nil?      
    title += " - " + h(@title) if @title # controllers can set this variable
    title
  end
  

  def menu_items
    [
      { :address => '/', :text => 'HOME' },
      { :address => '/page2.html', :text => 'page 2' },
      { :address => '/page3.html', :text => 'page 3' },
      { :address => '/page4.html', :text => 'page 4' },
      { :address => '/page5.html', :text => 'page 5' },
      { :address => '/page6.html', :text => 'CONTACT US' }
    ].map do |link|   # this adds the class opened to the menu item that is active
      link[:class] = (request.path =~ /^#{link[:address]}$/) ? 'opened' : 'notOpened'
      link
    end
  end
end
