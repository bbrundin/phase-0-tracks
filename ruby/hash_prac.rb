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

