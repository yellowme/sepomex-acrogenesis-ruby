require 'singleton'

module SEPOMEX_Acrogenesis
  class ApiClient
    include SEPOMEX_Acrogenesis::JsonApi

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
