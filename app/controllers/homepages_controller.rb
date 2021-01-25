class HomepagesController < ApplicationController
  def home
    @contacts = Contact.new
  end
end
