# docked-vmware-tools

This repo is a base for building a docker image and instance that is capable of smooth installation of ```vmware-install.pl```.

After entering the docker (run -it or run -d + exec -it).

```bash
# the user 'user' is password-less sudoer
sudo -i
# the /install dir is mapped to place where you have extracted the VMware-vSphere-Perl-SDK-6.5.0-4566394.x86_64.tar.gz
cd /install
# after running the perl install script you should get the tools (it takes some time)
perl vmware-install.pl
```

[VMware-vSphere-Perl-SDK-6.5.0-4566394.x86_64.tar.gz](https://my.vmware.com/web/vmware/details?downloadGroup=VS-PERL-SDK65&productId=614)

[VMworld 2017 Python SDK Hackathon](http://vmware.github.io/vsphere-automation-sdk-python/lab.html)

[Getting Started with the vSphere Automation SDK for Python](https://blogs.vmware.com/code/2017/04/11/get-started-vsphere-automation-sdk-for-python/)
