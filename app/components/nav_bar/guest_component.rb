module NavBar
  class GuestComponent < ApplicationComponent
    attr_reader :links

    def initialize(links:)
      @links = links
    end

    def nav_classes
      [
        "bg-gray-800",
        "fixed top-0 left-0 right-0 z-50": helpers.turbo_native_app?
      ]
    end
  end
end
