require 'json'

require 'sepomex/client/json_api'
require 'sepomex/client/api_client'

require 'sepomex/error'
require 'sepomex/structs/zip_code'

require 'sepomex/general'

module SEPOMEX
  @api_base = 'https://api-codigos-postales.herokuapp.com/'

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
