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

def nyc_pigeon_organizer(pigeon_listdata)
  pigeon_list = {}
  pigeon_data.each do |key, details|
    details.each do |attribute, array_of_names|
      array_of_names.each do |name|
        if pigeon_list[name].nil?
           pigeon_list[name] = {}
           pigeon_list[name][:color] = []
        end
        if key == :color
          pigeon_list[name][key] << attribute
        else
          pigeon_list[name][key] = attribute.to_s
        end
      end
    end
  end
end
