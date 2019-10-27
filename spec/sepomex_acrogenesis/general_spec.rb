require 'spec_helper'

describe SEPOMEX_ACROGENESIS::General do
  describe '.info_cp' do
    it 'successfully creates a customer' do
      stub_request(:get, 'https://api-codigos-postales.herokuapp.com/v2/codigo_postal/97305').to_return(
        body:
          JSON.dump(
            codigo_postal: "97305",
            municipio: "Mérida",
            estado: "Yucatán",
            colonias: [
              "Granjas Cholul",
              "Jalapa",
              "Parque Central",
              "Cholul",
              "Gran San Pedro Cholul",
              "Villas Cholul",
              "Alura",
              "Tixcuytún",
              "Santa Gertrudis Copo",
              "Algarrobos Desarrollo Residencial",
              "Residencial Campestre Viladiu",
              "San Luis Cholul",
              "Sian Kaan",
              "Residencial Anturio",
              "Cocoyoles",
              "Dzibilchaltún",
              "Bogdan",
              "Altavista",
              "Paraíso las Margaritas",
              "Las Margaritas de Cholul",
              "Villas de Bosque Cholul",
              "San Gabriel Tulipanes",
              "Cabo Norte",
              "Villas del Bosque Cholul"
            ]
          ),
        status: 200
      )

      zip_code = SEPOMEX_ACROGENESIS::General.info_zip_code(zip_code: '97305')

      expect(zip_code).to be_a(SEPOMEX_ACROGENESIS::ZipCode)
      expect(zip_code.zip_code).to eq('97305')
      expect(zip_code.settlement).to eq('Granjas Cholul')
      expect(zip_code.municipality).to eq('Mérida')
      expect(zip_code.state).to eq('Yucatán')
      expect(zip_code.city).to be_nil
    end

    it 'raises error whith invalid cp' do
      stub_request(:get, 'https://api-codigos-postales.herokuapp.com/v2/codigo_postal/97305').to_return(
        body:
          JSON.dump(
            {
              codigo_postal: "9",
              municipio: "",
              estado: "",
              colonias: [ ]
            }
          ),
        status: 200
      )

      begin
        zip_code = SEPOMEX_ACROGENESIS::General.info_zip_code(zip_code: '97305')
      rescue => exception
        expect(exception).to be_a(SEPOMEX_ACROGENESIS::RequestError)
      end
    end
  end
end
