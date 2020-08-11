class PagesController < ApplicationController

  # renders home page and contact page

  def home
    render("pages/home")
  end

  def Contact
    render("pages/Contact")
  end

  # displays not found message for undefined paths
  def not_found
    render plain: "Not found"
  end

end
