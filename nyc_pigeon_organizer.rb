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

pigeon_list = {
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway"]
  },
  "Peter Jr." => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Library"]
  },
  "Lucky" => {
    :color => ["purple"],
    :gender => ["male"],
    :lives => ["Central Park"]
  },
  "Ms. K" => {
    :color => ["grey", "white"],
    :gender => ["female"],
    :lives => ["Central Park"]
  },
  "Queenie" => {
    :color => ["white", "brown"],
    :gender => ["female"],
    :lives => ["Subway"]
  },
  "Andrew" => {
    :color => ["white"],
    :gender => ["male"],
    :lives => ["City Hall"]
  },
  "Alex" => {
    :color => ["white", "brown"],
    :gender => ["male"],
    :lives => ["Central Park"]
  }
}

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key, details|                           # :color => {:purple => ["Theo", "Peter Jr.", "Lucky"]} etc
    details.each do |attribute, array_of_names|         # :purple => ["Theo", "Peter Jr.", "Lucky"] etc
      array_of_names.each do |name|                     # ["Theo", "Peter Jr.", "Lucky", "Ms. K", "Queenie", "Andrew", "Alex"]
        if !pigeon_list.has_key?(name)
           pigeon_list[name] = {}                       # "Theo" => {} etc
        end

        if !pigeon_list[name].has_key?(key)
           pigeon_list[name][key] = []                  # "Theo" => {:color => []} etc
        end
        if !pigeon_list[name][key].include?(attribute)
          pigeon_list[name][key] << attribute.to_s       # "Theo" => {:color => ["purple", "gray"]} etc
        end
      end
    end
  end
  pigeon_list
end
