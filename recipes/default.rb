#
# Cookbook Name:: freesshd
# Recipe:: default
#

windows_package 'freesshd' do
  installer_type :custom
  source         node[:freesshd][:setup_url]
  options        '/VERYSILENT /NOICON /SUPPRESSMSGBOXES'
  action         :install
  not_if          { ::File.exist?("C:\\Program Files (x86)\\freeSSHd\\FreeSSHDService.exe") }
  if !node[:freesshd][:keep_service]
    notifies :run, 'batch[remove FreeSSHDService service]', :immediately
  end
end

batch 'remove FreeSSHDService service' do
  action :nothing
  code <<-EOH
  wmic service where name="FreeSSHDService" call stopservice
  wmic service where name="FreeSSHDService" call delete
  EOH
end

template 'C:\\Program Files (x86)\\freeSSHd\\FreeSSHDService.ini' do
  source 'FreeSSHDService.ini.erb'
end
