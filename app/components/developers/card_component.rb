module Developers
  class CardComponent < ApplicationComponent
    with_collection_parameter :developer

    attr_reader :developer

    def initialize(developer:, featured: false)
      @developer = developer
      @featured = featured
    end

    def hero
      @developer.hero
    end

    def bio
      @developer.bio
    end

    def container_classes
      ["relative", "border-b": featured?]
    end

    def link_classes
      # #{"border-l-4 border-blue-400" if featured?}
      base_classes = "bg-white hover:bg-gray-50 px-4 py-6 sm:p-6 flex space-x-4 sm:space-x-8".split

      [*base_classes, "border-l-4 border-blue-400": featured?]
    end

    def featured?
      !!@featured
    end
  end
end
