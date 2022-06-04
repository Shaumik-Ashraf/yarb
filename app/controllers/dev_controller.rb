class DevController < ApplicationController
  def mock_flash
    flash.notice = "Mock Notice!"
    flash.alert = "Mock Alert!"
    redirect_to root_url
  end

  def mock_mailer
    head :unimplemented
  end

  def mock_stream
    head :unimplemented
  end
end
