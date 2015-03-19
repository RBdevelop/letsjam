json.array!(@bands) do |band|
  json.extract! band, :id, :band_name, :genre
  json.url band_url(band, format: :json)
end
