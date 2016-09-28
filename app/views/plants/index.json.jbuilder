json.array!(@plants) do |plant|
  json.extract! plant, :id, :name, :scientific_name, :height, :width, :spacing, :life_cycle, :sun, :sow_method, :direct_seed_start, :direct_seed_stop, :indoor_seed_start, :indoor_seed_stop, :transplant_start, :transplant_stop, :garden_id
  json.url plant_url(plant, format: :json)
end
