class ApplicationController < ActionController::Base
  def hello # root 'application#hello'
    render html: "hello, world!"
  end
end
