require 'active_support'
require 'active_support/core_ext'

module SEPOMEX
  class General < ApiClient
    def self.info_zip_code(zip_code:)
      url = "v2/codigo_postal/#{zip_code}"
      response = api_get(url: url)
      raise SEPOMEX::RequestError.new if response[:municipio].blank?
      data = {
        zip_code: response[:codigo_postal].present? ? response[:codigo_postal] : nil,
        settlement: response[:colonias][0].present? ? response[:colonias][0] : nil,
        municipality: response[:municipio].present? ? response[:municipio] : nil,
        state: response[:estado].present? ? response[:estado] : nil
      }
      SEPOMEX::ZipCode.new(*data.values_at(*SEPOMEX::ZipCode.members))
    end
  end
end
