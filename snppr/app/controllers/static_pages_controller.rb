class StaticPagesController < ApplicationController
  def home
    @url = Url.new
    10.times { @url.images.build }
    10.times { @url.webs.build }
    10.times { @url.personals.build }
  end

  def help
  end

  def about
  end

  def contact
  end
  
end
