class DevController < ApplicationController
  def mock_flash
    flash.notice = "Mock Notice!"
    flash.alert = "Mock Alert!"
    redirect_to root_url
  end

  def mock_mailer
  end

  def mock_stream
  end
end
