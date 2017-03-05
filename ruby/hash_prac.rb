#INTERIOR DESIGNER APP

application = {
  name: "brittany",
  address: "67 Clearwood",
  email: "bbrundin@gmail.com",
  phone: "914-582-1965"
}

p application[:name]
application[:favshade] = "indigo"
p application
application[:wallpaper_pref] = "paisley"
application [:ombre_pref] = "fierce"
p application

p application[:hire_status] = "hired"
p application[:date_hired]= "6/02/16"
p application

p application [:hire_status][:name] + hire_status[:address]


# client = {
#   name: "Miranda Priestly",
#   client_age: "50",
#   children_num: "2",
#   decor_theme: "minimal glamour"
#   nautical_pref: "no"
# }

# p client[:name]
# client[:favshade] = "indigo"
# p client
# client[:wallpaper_pref] = "paisley"
# client [:ombre_pref] = "fierce"
# p client

# p client[:hire_status] = "hired"
# p client[:date_hired]= "6/02/16"
# p client

