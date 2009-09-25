# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def page_title
    current_link = menu_items.find{|link| request.path =~ /#{link[:address]}/}
    title = ""
    title += current_link[:text] unless current_link.nil?      
    title += " - " + h(@title) if @title # controllers can set this variable
    title
  end
  
  # this function adds the class opened to the menu item that is active
  def menu_items_with_class
    menu_items.map do |link|
      link[:class] = (request.path =~ /#{link[:address]}/) ? 'opened' : 'notOpened'
      link
    end
  end

  def menu_items
    [
      {:address => '/index.html', :text => 'HOME'},
      {:address => '/page2.html', :text => 'page 2'},
      {:address => '/page3.html', :text => 'page 3'},
      {:address => '/page4.html', :text => 'page 4'},
      {:address => '/page5.html', :text => 'page 5'},
      {:address => new_contact_path, :text => 'CONTACT US'}
    ]
  end
end
