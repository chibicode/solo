Ubuntu Graphics Suite
==================

Here is a list of commands, likns and PPA's to set up a Graphic Design suit on Ubuntu or its flavours.

This is a collection of ppa's that we have collected since we started using Ubuntu 14.04 at our studio. We like to use the latest bleeding edge builds with all new features. But they have bugs and might crash, we have a solid backup system with Sparcklshare. If you are doing projects that is time sensitive and if your bakcup system sucks, scroll down to see the command to install stable older packages from Ubuntu Software Centre.

There might be compatibility issues on some of the latest versions like Scribus. So google around and/or visit the PPA page on Launchpad and findout weather it works for you.

CHECK WHEN THIS DOC WAS UPDATED BEFORE YOU DO ANYTHING. WE MIGHT NOT KEEP UPDATING THIS DOC.

There are many different Libre softwares that do the same tasks.. this is based on just our preference.

This list will be eventually merged with https://github.com/mooniak/libre-design-tools as a webpage



#Grphics Suit 

##FontForge
```
sudo add-apt-repository ppa:fontforge/fontforge
sudo apt-get update && sudo apt-get install fontforge

```
##Inkscape 

###Trunk Builds
```
sudo add-apt-repository ppa:inkscape.dev/trunk
sudo apt-get update && sudo apt-get install inkscape-trunk
```
###Latest Stable
```
sudo add-apt-repository ppa:inkscape.dev/trunk
sudo apt-get update && sudo apt-get install inkscape-trunk
```

##GIMP 

###Edge
```
sudo add-apt-repository ppa:otto-kesselgulasch/gimp-edge
sudo apt-get update && sudo apt-get install gimp-gmic gmic
sudo apt-get install gimp-plugin-registry
sudo apt-get install gimp-resynthesizer
```
###Latest Stable

```
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get update && sudo apt-get install gimp-gmic gmic
sudo apt-get install gimp-plugin-registry
sudo apt-get install gimp-resynthesizer
```
##Scribus 

###Edge

```
sudo add-apt-repository ppa:scribus/ppa
sudo apt-get update && sudo apt-get install scribus
```
###Latest Stable

##Krita 

###Edge (LIME Experimental)
```
sudo add-apt-repository ppa:dimula73/krita
sudo apt-get update && sudo sudo apt-get install krita-testing krita-testing-dbg 
```

###Latest Stable

```
sudo add-apt-repository ppa:kubuntu-ppa/backports 
sudo apt-get update 
sudo apt-get install krita
```



##SVG Cleaner

```
sudo add-apt-repository ppa: svg-cleaner-team / svgcleaner
sudo apt-get update && sudo apt-get install svgcleaner
```


#Utilities

##Sparklshare

```
sudo add-apt-repository ppa:git-core/ppa
sudo add-apt-repository ppa:rebuntu16/sparkleshare+unofficial
sudo apt-get update && sudo apt-get install sparkleshare
```

##Simple Screen Recorder
```
sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder
sudo apt-get update && sudo apt-get install simplescreenrecorder
```

##Ambient Noise Player

```
sudo add-apt-repository ppa:costales/anoise
sudo apt-get update && sudo apt-get install anoise
sudo apt-get install anoise-community-extension1
sudo apt-get install anoise-community-extension2
sudo apt-get install anoise-community-extension3

```

##Guake Terminal

```
sudo apt-get install guake
```



# Install with Clean Start

We made a pakagelist to be installed using [Cleanstart](https://silverwav.wordpress.com/2010/03/18/a-cleanstart-for-your-new-ubuntu-install-packages-from-a-list/) by silverwav and [Ubuntu post installation script](http://voidandany.free.fr/index.php/installer-de-facon-automatique-une-liste-de-package-et-les-depots-associes/) by VoidAndAny 

NOT TESTED!

Install Aptitude First, On Terminal do the following.

`sudo apt-get install aptitude`

Then extract `cleanstart-packages.list.sh` and `packages.list` into the same folder. Acess the folder on Terminal. Then do the following.

`sudo sh cleanstart-packages.list.sh`


# Install from Ubuntu Repositories

```
sudo apt-get install inkscape gimp scribus 
