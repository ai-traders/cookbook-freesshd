# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.require_version '>= 1.6.0'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.hostname = 'freesshd-berkshelf'

  config.vm.box       = ENV['BOX'] || 'windows-7-net45-1.3-chef-11.16.4'

  # Set the version of chef to install using the vagrant-omnibus plugin
  # NOTE: You will need to install the vagrant-omnibus plugin:
  #
  #   $ vagrant plugin install vagrant-omnibus
  #
  if Vagrant.has_plugin?("vagrant-omnibus")
    config.omnibus.chef_version = '11.16.4'
  end

  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      freesshd: { 
        keep_service: false,
        ssh: {
          SSHListenPort: 2228
        },
        users: {
          admin: {
            auth: 1,
            password: '4E7AFEBCFBAE000B22C7C85E5560F89A2A0280B4EC',# Admin
            domain: nil,
            shell: 1,
            sftp: 0,
            tunnel: 0
          }
        }        
      }
    }

    chef.run_list = [
      'recipe[freesshd::default]'
    ]
  end
end
