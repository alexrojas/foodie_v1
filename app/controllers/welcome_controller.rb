class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, :only => [ :index ]
  def index
    @places = GoogleMapsService.nearby_places 33127
    Rails.logger.info @places
  end
end
