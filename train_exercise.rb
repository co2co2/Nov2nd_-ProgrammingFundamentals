train_game = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

#
train_111_direction = train_game[-1][:direction]
puts  train_111_direction
#
train_80B_frequency = train_game[5][:frequency_in_minutes]
puts train_80B_frequency
#
train_610_direction = train_game[2][:direction]
puts train_610_direction

# def find_dir(train_num, train_data)
#   train_data.each do |k|
#     if k[:train] == train_num
#       puts k[:direction]
#     end
#   end
# end

north_bound = []
train_game.each do |k|
  if k[:direction] == "north"
    north_bound << k[:train]
  end
end
puts north_bound

east_bound = []
train_game.each do |k|
  if k[:direction] == "east"
    east_bound << k[:train]
  end
end
puts east_bound

def dir_finder (direction, train_data)
    train_data.each do |k|
    if k[:direction] == direction
      puts k[:train]
    end
  end
end
puts dir_finder (east , train_game)
puts dir_finder (north , train_game)

train_110 = {train: "110", frequency_in_minutes: 15, direction: "north"}
train_110[:first_departure_time] = 6
puts train_110
