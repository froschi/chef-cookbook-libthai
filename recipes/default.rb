include_recipe "libthai-data"
include_recipe "libdatrie"

packages = Array.new

case node[:lsb][:codename]
when "lucid", "precise"
  packages |= %w/
    libthai0
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
