Bare CentOS 7
===

ほぼ素の状態の CentOS 7 の vagrant イメージです。
VirtualBox 用の vagrant イメージのみを提供します。

## Prerequisites

事前に Packer, Vagrant, VirtualBox をインストールしてください。

## How to Build

```
$ git clone https://github.com/shirasagi/bare-centos7.git
$ cd bare-centos7
$ packer build -only=virtualbox-iso template.json
$ vagrant box add bare-centos7 bare-centos7-x86_64.box
```

## How to Use

適当なディレクトリを作成し、次のような内容を持つ `Vagrantfile` を作成してください。

    $ cat Vagrantfile
    VAGRANTFILE_API_VERSION = "2"
    Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
      config.vm.box = "bare-centos7"
      config.vm.box_url = "https://github.com/shirasagi/bare-centos7/releases/download/7.2.1511/bare-centos7-x86_64.box"
      # config.vm.network :forwarded_port, guest: 80, host: 8080
      # config.vm.network :forwarded_port, guest: 3000, host: 3000
    end

次のコマンドで起動できます。

    $ vagrant up

以上。
