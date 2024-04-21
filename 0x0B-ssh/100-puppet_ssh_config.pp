#!/usr/bin/env bash
# Client configuration file (w/ Puppet)

file { 'etc/ssh/ssh_config':
	ensure => present,
	content =>"
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
}
