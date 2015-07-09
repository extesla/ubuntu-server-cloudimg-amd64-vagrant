# The MIT License (MIT)
#
# Copyright (c) 2015 Extesla, LLC.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  ### Install VM box
  config.vm.box = "https://cloud-images.ubuntu.com/vagrant/vivid/current/vivid-server-cloudimg-amd64-vagrant-disk1.box"

  ### Host-to-Guest Port Forwarding
  config.vm.network :forwarded_port, guest: 80, host: 80
  config.vm.network :forwarded_port, guest: 443, host: 443
  config.vm.network :forwarded_port, guest: 27017, host: 27017

  ### VirtualBox Provider Configuration
  config.vm.provider :virtualbox do |vb|
    vb.gui = false
    vb.customize ["modifyvm", :id, "--cpus", "2"]
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  ###
  ### Modify initctl to simply return "true" when running under a virtual machine.
  ###
  config.vm.provision "shell", inline: "sudo dpkg-divert --local --rename --add /sbin/initctl"
  config.vm.provision "shell", inline: "ln -s /bin/true /sbin/initctl"

  ###
  ### Provision the system baseline using Salt Stack, also assign folders to
  ### synchronize between the host and the VM.
  ###
  config.vm.synced_folder "salt/roots/", "/srv/"
  config.vm.provision :salt do |salt|
    salt.minion_config  = "salt/development/minion"
    salt.run_highstate  = true
    #salt.verbose = true
  end

  ###
  ### Pull images into the VM which Docker is going to need to use.
  ###
  config.vm.provision :docker, images: ["ubuntu:trusty"]
end
