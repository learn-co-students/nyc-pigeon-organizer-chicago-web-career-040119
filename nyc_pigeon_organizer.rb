def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |key, value|
    value.each do |details, names|
      names.each do |name|
  if !pigeon_list.has_key?(name)
    pigeon_list[name] = {}
  end
  if !pigeon_list[name].has_key?(key)
    pigeon_list[name][key] = []
  end
    if !pigeon_list[name][key].include?(details)
      pigeon_list[name][key] << details.to_s
    end
  end 
end
end 
pigeon_list
end

