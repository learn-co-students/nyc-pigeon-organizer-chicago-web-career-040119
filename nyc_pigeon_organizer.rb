#pigeon_data = {
#  :color => {
#    :purple => ["Theo", "Peter Jr.", "Lucky"],
#    :grey => ["Theo", "Peter Jr.", "Ms. K"],
#    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#    :brown => ["Queenie", "Alex"]
#  },
#  :gender => {
#    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#  },
#  :lives => {
#    "Subway" => ["Theo", "Queenie"],
#    "Central Park" => ["Alex", "Ms. K", "Lucky"],
#    "Library" => ["Peter Jr."],
#    "City Hall" => ["Andrew"]
#  }
#}

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
#This is heavily borrowed from Blake's lecture & notes, but refactored a bit.
pigeons.each do |key, hash|
  # <:color => {:purple => ["Theo", "Peter Jr.", "Lucky"],etc}>
  hash.each do |attribute, name_array|
    # <:purple => ["Theo", "Peter Jr.", "Lucky"]>
    # <"Subway" => ["Theo", "Queenie"]>
    name_array.each do |name|
      # <["Theo", "Peter Jr.", "Lucky"]>
      if pigeons2[name].nil?
        pigeons2[name] = {}
        pigeons2[name][:color] = []
      end
      if key == :color
        #for each name in pigeons, if key = :color, shovel the attribute (purple, grey, etc) into the pigeons2 color array
        pigeons2[name][key] << attribute
      else
        #otherwise assign the key(:lives or :gender) to pigeons2 hash and set it equal to the value of that attribute
        #convert attributes to string!!!!! yayyyyyyyyy!
        pigeons2[name][key] = attribute.to_s
      end
    end
  end
end
