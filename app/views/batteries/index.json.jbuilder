json.array!(@batteries) do |battery|
  json.extract! battery, :code, :chem_composition, :string, :color, :voltage, :capacity, :int, :description, :element_count, :netto, :brutto, :price
  json.url battery_url(battery, format: :json)
end