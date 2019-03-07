data = {
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

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key, details|                           # :color => {:purple => ["Theo", "Peter Jr.", "Lucky"]} etc
    details.each do |attribute, array_of_names|         # :purple => ["Theo", "Peter Jr.", "Lucky"] etc
      array_of_names.each do |name|                     # ["Theo", "Peter Jr.", "Lucky"]
        if !pigeon_list.has_key?(name)
           pigeon_list[name] = {}
        end
        if !pigeon_list.has_key?(key)
           pigeon_list[name][key] = []
        end
        if !pigeon_list[name][key].include?(attribute)
          pigeon_list[name][key] << attribute.to_s
        end
      end
    end
  end
  pigeon_list
end
