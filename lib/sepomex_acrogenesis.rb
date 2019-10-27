require 'json'

require 'sepomex_acrogenesis/client/json_api'
require 'sepomex_acrogenesis/client/api_client'

require 'sepomex_acrogenesis/error'
require 'sepomex_acrogenesis/structs/zip_code'

require 'sepomex_acrogenesis/general'

module SEPOMEX_ACROGENESIS
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
