class HomeController < ApplicationController
  def index

  end


  def site
    @service_cases = ServiceCase.all.limit(6)
    render "site", layout: "banner_index"
  end

  def photo

  end
end
