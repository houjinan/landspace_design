class HomeController < ApplicationController
  def index

  end


  def site
    @service_cases = ServiceCase.all.order("seqence desc").limit(3)
    @members = Member.all.order("seqence desc")
    render "site", layout: "banner_index"
  end
end
