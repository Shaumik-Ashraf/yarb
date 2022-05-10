class PagesController < ApplicationController
  def readme
	@readme = RDiscount.new(File.read( Rails.root.join('README.md') )).to_html
  end

  def server
    @server_info = `rails about`
    @routes_info = `rails routes`
  end
end
