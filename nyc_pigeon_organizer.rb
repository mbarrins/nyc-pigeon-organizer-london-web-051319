pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  # bird_hash = data.values[0].values.flatten.uniq.map{|bird| [bird, {}]}.to_h
  #
  # bird_hash.keys.each do |bird|
  #   data.keys.each{|type| bird_hash[bird][type] = data[type].select{|desc,names| names.include?(bird)}.keys.map(&:to_s)}
  # end
  # bird_hash

  data.values[0].values.flatten.uniq.map do |bird|
      [bird, data.keys.map{|type| [type, data[type].select{|desc,names| names.include?(bird)}.keys.map(&:to_s)]}.to_h]
  end.to_h

end
