Vagrant.configure(2) do |config|
    config.vm.define "ubuntu", primary: true do |ubuntu|
        ubuntu.vm.box = "ubuntu/trusty64"
        ubuntu.vm.hostname = "ubuntu.now.vm"

        ubuntu.vm.provision :puppet do |puppet|
            puppet.manifests_path = "puppet/ubuntu"
            puppet.module_path = "puppet/modules"
            puppet.options = ['--verbose']
        end
    end

    config.vm.define "arch" do |arch|
        arch.vm.box = "jfredett/arch-puppet"
        arch.vm.hostname = "arch.now.vm"

        arch.vm.provision :puppet do |puppet2|
            puppet2.manifests_path = "puppet/arch"
            puppet2.module_path = "puppet/modules"
            puppet2.options = ['--verbose']
        end

        arch.vm.provision :shell, privileged: false, path: "vagrant/arch.sh"
    end
end
