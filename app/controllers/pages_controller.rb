class PagesController < ApplicationController
  def readme
	@readme = File.read( Rails.root.join('README.md') )
  end

  def server
    @server_info = `rails about`
    @routes_info = `rails routes`
  end
end
