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
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  # write your code here!
  data.each do |key, details|
    details.each do |attribute, array_of_names|
      array_of_names.each do |name|
        if pigeon_list[name] == nil
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
