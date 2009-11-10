class SiteController < ApplicationController
  caches_page :contact, :coupons, :index, :location, :products_services
end
