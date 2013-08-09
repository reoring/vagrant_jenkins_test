package "apache2" do
    action :install
end

service "apache2" do
    supports :restart => true, :reload => true
    action :disable
end
