#
# Cookbook Name:: ubuntu_livecd
# Recipe:: default
#
# Copyright 2012, Chris McClimans
#

ubuntu_livecd '/dev/shm/mylive.iso' do
  dist 'precise'
  arch 'amd64'
  workdir '/dev/shm/ubuntu_livecd'
end
