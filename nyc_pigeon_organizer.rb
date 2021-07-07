def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data[:gender].each do |sex, sex_details|
    data[:gender][sex].each_with_index do |name, index|
      pigeon_list[data[:gender][sex][index]] = {:color => [], :gender => [sex.to_s], :lives => []}
    end
  end
  data[:color].each do |color, color_details|
    data[:color][color].each_with_index do |name, index|
        pigeon_list[name][:color][pigeon_list[name][:color].length] = color.to_s
    end
  end
  data[:lives].each do |location, resident_list|
    data[:lives][location].each_with_index do |name, index|
        pigeon_list[name][:lives][pigeon_list[name][:lives].length] = location
    end
  end
  pigeon_list
end
