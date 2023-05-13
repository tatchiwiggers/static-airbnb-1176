require 'open-uri'

class FlatsController < ApplicationController
    before_action :get_flats

    FLATS_URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"

    def index
    end
    
    def show
        @flat = @flats.find { |flat| params[:id].to_i == flat['id']}
    end

    private

    def get_flats
        @flats = JSON.parse(URI.open(FLATS_URL).read)
    end
end