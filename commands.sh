cd ~/rails/minute-generator
bundle install

rvm gemset use estudo

rake db:drop
rake db:migrate
rake db:seed
