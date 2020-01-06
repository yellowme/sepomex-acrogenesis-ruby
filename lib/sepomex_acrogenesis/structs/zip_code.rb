module SEPOMEX_Acrogenesis
  ZipCode =
    Struct.new(
      :zip_code,
      :settlement,
      :settlement_type,
      :municipality,
      :state,
      :city,
      :country
    )
end
