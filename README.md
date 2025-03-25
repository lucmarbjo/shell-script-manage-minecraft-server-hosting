# shell-script-manage-minecraft-server-hosting
Shell scripts for managing minecraft server running on linux (Assuming being a debian instance)

---

The scripts are copied from [this repo](https://github.com/cranstonide/linux-minecraft-scripts) by [cranstonide](https://github.com/cranstonide)

---

Scripts to aid in the hosting of vanilla* Minecraft servers on a Linux enviornment.

Feel free to clone this repository into your server enviornment to add some much needed funciionality.

---

In order to use these scripts, you'll just have to clone the repository. Make sure you have **git**, **screen**, and **java** installed.

We also need ufw to configure ports inbounds and outbounds in order for players to connect

> [!Caution]
> 
> You should know what you're doing when opening/closing ports  
> Misconfiguration, or in general open ports can or may be utilized to gather unauthorized access
>
> When managing firewalls, such as *UFW*, you should be certain about your configurations and actions
>
> Proceed with Caution

## Setup your debian environment

1. Install **GIT**

```Shell

sudo apt install git-all

```

2. Install **GNU Screen**


```Shell

sudo apt-get install screen

```

3. Install JAVA JDK Runtime

```Shell

sudo apt-get install openjdk-17-jre-headless

```

4. Install *UFW*

```Shell

sudo apt install ufw

```

Now that we have installed the requirements, we want to make a folder that will contain our minecraft server files

```Shell

cd /

```

```Shell

mkdir minecraft & cd minecraft

```


 clone the repository as shown below to retrieve scripts and files.  

```Shell

sudo git clone https://github.com/cranstonide/linux-minecraft-scripts

```

---
## Configure your server

Don't forget to edit the mc-config.cfg to meet your setup. The scripts won't work correctly if you don't customize the config file first.


## Start the Minecraft server

Most of the scripts in this repo require Minecraft to run inside a GNU screen. This can be done using the mc-start.sh script as follows:

./mc-start.sh

Stopping the Server

You can shut down the server (and give people a heads up) using the provided script.

./mc-stop.sh

Accessing the Console

If you need to reach the Minecraft console, you may do so by running the following command.  

screen -r minecraft  

Notes  

These scripts are to help manage a Minecraft server running on Linux. They are bash scripts; so they won't run on your Windows installation without some major refactoring. The installation also heavily relies on a working installation of GNU Screen.

These scripts have not been tested with any third party servers. They may work, but your milage may vary.  
TODO  

These are some features I may add eventually.

    Administrative interface (for starting and stopping)
    Add submodules for rendering and log viewers.
