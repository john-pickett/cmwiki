class WelcomeController < ApplicationController
  def index
    @random_wiki = Wiki.offset(rand(Wiki.count)).first
    @most_recent_wiki = Wiki.last
  end
end
