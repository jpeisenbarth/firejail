# Firejail profile for curl
# Description: Command line tool for transferring data with URL syntax
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include curl.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.curlrc

blacklist /tmp/.X11-unix

include disable-common.inc
include disable-exec.inc
include disable-passwdmgr.inc
include disable-programs.inc

caps.drop all
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none

# private-bin curl
private-cache
private-dev
# private-etc alternatives,ca-certificates,crypto-policies,pki,resolv.conf,ssl
private-tmp
