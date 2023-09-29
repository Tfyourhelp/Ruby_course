class ApplicationController < ActionController::Base
  include SessionsHelper
  def hello # root 'application#hello'
    render html: "hello, world!"
  end
end
