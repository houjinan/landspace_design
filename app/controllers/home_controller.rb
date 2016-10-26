class HomeController < ApplicationController
  def index

  end


  def site
    @service_cases = ServiceCase.all.limit(6)
    @members = Member.all.limit(6)
    render "site", layout: "banner_index"
  end
end
