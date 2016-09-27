require 'pry'

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

def nyc_pigeon_organizer(pigeon_data)
  hold_arr = []
  new_hash = {}
  #pigeon_data.each_key { |key| puts pigeon_data[key].keys } #returns an array of all possible attributes
  #pigeon_data.each_key { |key| puts pigeon_data[key].values } #returns an array of al possible atrribute types i.e (location, color, gender)
  pigeon_data.each_key { |key| hold_arr << pigeon_data[key].values }
  hold_arr.flatten(3).uniq.each do |pigeon_names|
    new_hash[pigeon_names] = {
      :color => [],
      :gender => [],
      :lives => []
    }
  end
  new_hash.each_pair do |name, attribute|
    attribute.each_pair do |attri,attriArray|
      pigeon_data.each do |top_lvl,next_lvl|
        next_lvl.each do |sec_lvl, names|
#          binding.pry
          if pigeon_data[top_lvl][sec_lvl].include?(name) && attri == top_lvl
            attriArray << sec_lvl.to_s
#            binding.pry
          end
#          binding.pry
        end
      end
    end
  end
#  new_hash
#  binding.pry
end

#dat_nu_nu(pigeon_data)

#def nyc_pigeon_organizer(pigeon_data)
#  names = pigeon_data.values
#  binding.pry
#end
#nyc_pigeon_organizer(pigeon_data)
