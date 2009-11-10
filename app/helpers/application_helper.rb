# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def page_title
    if @title # controllers can set this variable
      @title
    else
      controller.action_name.humanize  
    end
  end
  

  def menu_items
    [
      { :address => '/', :text => 'HOME' },
      { :address => '/products_services.html', :text => 'PRODUCTS &amp; SERVICES' },
      { :address => '/send_file.html', :text => 'SEND A FILE' },
      { :address => '/aboutus.html', :text => 'ABOUT US' },
      { :address => '/location.html', :text => 'LOCATION' },
      { :address => contact_us_path, :text => 'CONTACT US' }
    ].map do |link|   # this adds the class opened to the menu item that is active
      link[:class] = (request.path =~ /^#{link[:address]}$/) ? 'opened' : 'notOpened'
      link
    end
  end
end
