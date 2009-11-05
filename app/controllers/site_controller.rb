class SiteController < ApplicationController
  caches_page :aboutus, :contact, :coupons, :index, :location, :send_file, :products_services
end
