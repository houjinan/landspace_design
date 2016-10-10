class HomeController < ApplicationController
  def index

  end


  def site
    render "site", layout: "banner_index"
  end

  def photo

  end
end
