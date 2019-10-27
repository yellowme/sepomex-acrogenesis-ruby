module SEPOMEX_ACROGENESIS
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
