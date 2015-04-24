default[:freesshd][:setup_url] = 'http://www.freesshd.com/freeSSHd.exe'
# Installer adds windows service
# If you do not want it then set false to uninstall immediately
default[:freesshd][:keep_service] = true

# TODO default[:freesshd][:telnet]
# [Telnet server] section
# TelnetListenAddress=0.0.0.0
# TelnetListenPort=23
# TelnetMaxConnections=0
# TelnetTimeout=0
# TelnetBanner=
# TelnetCMD=C:\Windows\system32\cmd.exe
# TelnetRun=0
# TelnetNewConsole=1
# [SSH server] section
default[:freesshd][:ssh][:SSHListenAddress] = "0.0.0.0"
default[:freesshd][:ssh][:SSHListenPort] = 22
default[:freesshd][:ssh][:SSHMaxConnections] = 0
default[:freesshd][:ssh][:SSHTimeout] = 0
default[:freesshd][:ssh][:SSHBanner] = ""
default[:freesshd][:ssh][:SSHCMD] = "C:\Windows\system32\cmd.exe"
default[:freesshd][:ssh][:SSHRun] = 1
default[:freesshd][:ssh][:SSHNewConsole] = 1
default[:freesshd][:ssh][:SSHCiphers] = 0
default[:freesshd][:ssh][:SSHMACs] = 65535
default[:freesshd][:ssh][:SSHPasswordAuth] = 0
default[:freesshd][:ssh][:SSHPublickeyAuth] = 0
default[:freesshd][:ssh][:SSHPublickeyPath] = 'C:\Program Files (x86)\freeSSHd'
default[:freesshd][:ssh][:RSAKeyPath] = 'C:\Program Files (x86)\freeSSHd\RSAKey.cfg'
default[:freesshd][:ssh][:DSAKeyPath] = 'C:\Program Files (x86)\freeSSHd\DSAKey.cfg'
# [SSH tunneling]
# SSHLocalTunnel=0
# SSHLocalTunnelOnly=0
# SSHRemoteTunnel=0
# SSHRemoteTunnelOnly=0
# [SFTP]
# SFTPHomePath=$HOME\
# [Access filtering]
# HostRestrictions=
# HostRestrictionsAllow=0
# [Logging]
# LogEvents=0
# LogFilePath=C:\Program Files (x86)\freeSSHdfreesshd.log
# LogResolveIP=0
# [Automatic updates]
# UpdateCheckOnStartup=1
# UpdateDontPrompt=0
# UpdateShowMessages=1
# UpdateLastMessageID=1

