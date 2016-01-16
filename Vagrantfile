Vagrant.configure(2) do |config|
    config.vm.define "trusty", primary: true do |ubuntu|
        ubuntu.vm.box = "ubuntu/trusty64"
        ubuntu.vm.hostname = "trusty.now.vm"

        ubuntu.vm.provision :puppet do |puppet|
            puppet.manifests_path = "puppet/trusty"
            puppet.options = ['--verbose']
        end
    end

    config.vm.define "arch" do |arch|
        arch.vm.box = "jfredett/arch-puppet"
        arch.vm.hostname = "arch.now.vm"

        arch.vm.provision :puppet do |puppet2|
            puppet2.manifests_path = "puppet/arch"
            puppet2.options = ['--verbose']
        end
    end
end
