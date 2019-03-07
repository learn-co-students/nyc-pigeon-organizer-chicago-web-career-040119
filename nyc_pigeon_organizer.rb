pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(pigeon_data)
  pigeon_list = {}
  pigeon_data.each do |key, details|
    details.each do |attribute, array_of_names|
      array_of_names.each do |name|
        if !pigeon_list.has_key?(name)
           pigeon_list[name] = {}
        end
        if !pigeon_list.has_key?(key)
           pigeon_list[name][key] = []
        end
        if !pigeon_list.include?(attribute)
          pigeon_list[name][key] << attribute.to_s
        end
      end
    end
  end
  pigeon_list
end
