class PagesController < ApplicationController
  def home
    @options = {
      center: [2.3522, 48.8566], 
      zoom: 15, 
      class: "h-screen w-full",
      token: Rails.application.credentials.dig(:mapbox),
      path: "driving",
      path_options: {
        line_color: "#000",
        line_width: 2
      },
      markers: [
        [2.2945, 48.8584],
        [2.3364, 48.8606],
        [2.3499, 48.8529],
        [2.3429, 48.8867],
        [2.3371, 48.8462]
      ]
    }
  end
end
