package 'httpd'

file "/var/www/html/index.html" do
 content "<h1> Welcome to Chef Class</h1></br><h2>From scmGalaxy</h2>"
end 

service 'httpd' do
  action :start
end
