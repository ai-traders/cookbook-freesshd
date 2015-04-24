# freesshd-cookbook

Chef cookbook which installs and configures [freesshd](http://www.freesshd.com) on windows.

## Features

 * install freesshd
 * configure ssh server
 * configure user access, password and key-based

## Supported Platforms

Tested on Windows 7 x64, but should work on any version.

## Attributes

Attribute names follow official names from *FreeSSHDService.ini*. Defaults are the same as installer would create.

### SSH Server

 * `node[:freesshd][:ssh][:SSHListenAddress]` - Default:  "0.0.0.0"
 * `node[:freesshd][:ssh][:SSHListenPort]` - Default:  22
 * `node[:freesshd][:ssh][:SSHMaxConnections]` - Default:  0
 * `node[:freesshd][:ssh][:SSHTimeout]` - Default:  0
 * `node[:freesshd][:ssh][:SSHBanner]` - Default:  ""
 * `node[:freesshd][:ssh][:SSHCMD]` - Default:  "C:\Windows\system32\cmd.exe"
 * `node[:freesshd][:ssh][:SSHRun]` - Default:  1
 * `node[:freesshd][:ssh][:SSHNewConsole]` - Default:  1
 * `node[:freesshd][:ssh][:SSHCiphers]` - Default:  0
 * `node[:freesshd][:ssh][:SSHMACs]` - Default:  65535
 * `node[:freesshd][:ssh][:SSHPasswordAuth]` - Default:  0
 * `node[:freesshd][:ssh][:SSHPublickeyAuth]` - Default:  0
 * `node[:freesshd][:ssh][:SSHPublickeyPath]` - Default:  'C:\Program Files (x86)\freeSSHd'
 * `node[:freesshd][:ssh][:RSAKeyPath]` - Default:  'C:\Program Files (x86)\freeSSHd\RSAKey.cfg'
 * `node[:freesshd][:ssh][:DSAKeyPath]` - Default:  'C:\Program Files (x86)\freeSSHd\DSAKey.cfg'

## Usage

### freesshd::default

Include `freesshd` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[freesshd::default]"
  ]
}
```
This will install freesshd and windows service with default configuration. Use chef attributes to customize.

### User access

All attributes under `node[:freesshd][[:users]` control access to the server. 

Examples:
 * add user `admin` with password-only authentication, enabled access to shell, with password 'Admin':

```ruby
node[:freesshd][:users][:admin] = {
  auth: 1,
  password: '4E7AFEBCFBAE000B22C7C85E5560F89A2A0280B4EC',# Admin
  domain: nil,
  shell: 1,
  sftp: 0,
  tunnel: 0
}
```

## TODO list

More human-friendly attribute types (e.g. `true` instead of 1).

Entire sshd is controlled by one single .ini file. Currently only ssh server and users section is controlled by this cookbook.
Additionally we could have configurable:
 * telnet
 * sftp
 * logging

## License and Authors

License:: MIT
Author:: Tomasz Setkowski (<tom@ai-traders.com>)
