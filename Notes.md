# These are my notes for the training.

## rootless podman installation in Ubuntu

* Install conmon from https://launchpad.net/~projectatomic/+archive/ubuntu/ppa

* put conmon on hold (conmon from the podman official repo seems broken at the moment, this may change in the future)

* Install podman-rootless from
    http://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/testing/xUbuntu_18.04/

    As seen in: https://podman.io/getting-started/installation

    podman-rootless only available in testing, not stable


* Install podman-compose from https://github.com/containers/podman-compose  (devel)

I recommend you do it on a python3 virtual environment
```
python3 -m venv --system-site-packages myvenv3.6 
. myvenv3.6/bin/activate
pip install https://github.com/containers/podman-compose/archive/devel.tar.gz
```


I have 3 sets of configs:

* single_node: 1 server + 1 client

* replication: 1 master + 1 replica + 1 client

* sentinel: 3 sentinel + 1 master + 1 replica + 1 client


