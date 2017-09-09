namespace :init_users do
  desc '初始化用户'
  task :migrate => :environment do
    User.create(email: 'sushupro@gmail.com', password: '000000', password_confirmation: '000000', phone: '15931672223')
    User.create(email: 'wst@gmail.com', password: '000000', password_confirmation: '000000', phone: '18733100726')
  end
end



