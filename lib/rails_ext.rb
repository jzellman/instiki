module ActionController
  module Caching
    module Actions
      protected
      class ActionCachePath
        private
        alias_method :old_extract_extension, :extract_extension
        def extract_extension(request)
          @extension = request.cache_format
        end
      end
    end
  end
end
