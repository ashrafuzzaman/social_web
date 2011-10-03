data_store = 'http://10.0.2.2:3001'
#data_store = 'http://social-web-data.heroku.com'

User.delete_all
User.create(:email => "ashrafuzzaman.g2@gmail.com", :password => "123456", :data_service_host => data_store)
User.create(:email => "sust.rumjhum@gmail.com", :password => "123456", :data_service_host => data_store)