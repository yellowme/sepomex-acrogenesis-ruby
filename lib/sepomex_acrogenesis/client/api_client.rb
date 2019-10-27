require 'singleton'

module SEPOMEX_ACROGENESIS
  class ApiClient
    include SEPOMEX_ACROGENESIS::JsonApi

    def self.config
      yield self
    end

    def self.api_base
      @api_base
    end

    def self.api_base=(api_base)
      @api_base = api_base
    end
  end
end
