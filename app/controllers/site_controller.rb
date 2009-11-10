class SiteController < ApplicationController
  caches_page :coupons, :index, :location, :products_services, :aboutus
  
  def coupons
    @title = "10% off coupon for signs, banners or promotional items"
  end
  
  def index
    @title = "Sign Company specialized in custom banners, real estate signs and promotional items based in Chicago, IL"
  end
  
  def location
    @title = "Directions to our sign company in Chicago - we make signs, banners and real estate signs"
  end
  
  def products_services
    @title = "We make best quality signs, custom signage, banners & stands and promotional items"
  end
  
  def aboutus
    @title = "A family owned sign company based in Chicago, IL, specialized in billboards, customer banners & signs"
  end
  
end
