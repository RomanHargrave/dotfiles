##########################
# Initialize Environment #
##########################

if which vimpager
	set -gx PAGER vimpager
end

set -xe PATH

set -e LD_LIBRARY_PATH

set -gx LFIX $HOME/.local

set -gx PKG_CONFIG_PATH $PKG_CONFIG_PATH $LFIX/lib/pkgconfig
set -gx QT_STYLE_OVERRIDE gtk
set -gx LD_LIBRARY_PATH $LD_LIBRARY_PATH /usr/local/lib $LFIX/lib
set -gx LD_LIBRARY_PATH $LD_LIBRARY_PATH $LFIX/opt/parasite/lib/gtk-3.0/modules

set -gx FISH_CPATH $HOME/.config/fish/config.fish

set -gx TERM "xterm-256color"

set -gx RCRC ~/.config/rcm/rcmrc

##############################
# Miscelaneous Path Settings #
##############################

set PATH $PATH /opt/wine-compholio/bin

##################
# Local Software #
##################

    #############
    # Local Bin #
    #############

    set PATH    $PATH $HOME/bin
    set PATH    $PATH $LFIX/bin
    set PATH    $PATH $LFIX/usr/bin

    ###########
    # OpenOCD #
    ###########

    set PATH	$PATH /opt/openocd/bin

    ############
    # Gimp 2.9 #
    ############

    set PATH	$PATH $LFIX/opt/gimp-2.9/bin

    ###############
    # RawTherapee #
    ###############

    set PATH	$PATH $LFIX/opt/rawtherapee

    #########
    # Gyazo #
    #########

    set PATH $PATH $LFIX/opt/gyazo 

    ###########
    # Firefox #
    ###########

    #set PATH    $PATH $LFIX/opt/nightlyUX
    #set PATH	$PATH $LFIX/opt/nightly
    set PATH	$PATH $LFIX/opt/firefoxBeta
    ############
    # Java SDK #
    ############

    set -gx JDK_HOME $LFIX/opt/java/jdk/oracle/8u20
    set -gx JAVA_HOME $JDK_HOME

    set PATH $PATH $JAVA_HOME/bin

    ##########
    # Groovy #
    ##########

    set GROOVY_HOME	$LFIX/opt/groovy-2.2.1/

    set PATH $PATH $GROOVY_HOME/bin

    #########
    # Scala #
    #########

    set PATH $PATH $LFIX/opt/scala-2.11.4/bin

    ######
    # Go #
    ######

    set -x GOROOT   /home/roman/.local/opt/go
    set -x GOPATH   /home/roman/.local/share/go
    set -x GOBIN    $GOROOT/bin

    set PATH $PATH $GOBIN

    ########
    # Golo #
    ########

    set PATH $PATH $LFIX/opt/golo-0-preview11/bin

    ###########
    # Clojure #
    ###########

    set PATH $PATH $LFIX/opt/clojure/bin

    ####################
    # Java Decompilers #
    # * Fernflower     #
    # * Soot (Dava)    #
    # * CFR            #
    # * Procyon        #
    # * Krakatau       #
    ####################

    set PATH $PATH $LFIX/opt/fernflower/
    set PATH $PATH $LFIX/opt/soot/
    set PATH $PATH $LFIX/opt/cfr-decompiler/
    set PATH $PATH $LFIX/opt/procyon/bin
    set PATH $PATH $LFIX/opt/krakatau/bin
	
    set PATH $PATH $LFIX/opt/jnianalyzer

    set DEFAULT_SOOT_CP ".:/home/roman/.local/opt/java/jdk/oracle/7u45/jre/lib/javaws.jar:/home/roman/.local/opt/java/jdk/oracle/7u45/jre/lib/jsse.jar:/home/roman/.local/opt/java/jdk/oracle/7u45/jre/lib/     plugin.jar:/home/roman/.local/opt/java/jdk/oracle/7u45/jre/lib/jfxrt.jar:/home/roman/.local/opt/java/jdk/oracle/7u45/jre/lib/rt.jar:/home/roman/.local/opt/java/jdk/oracle/7u45/jre/lib/jce.jar:/home/roman/.local/opt/java/jdk/oracle/7u45/jre/lib/jfr.jar:/home/roman/.local/opt/java/jdk/oracle/7u45/jre/lib/resources.jar:/home/roman/.local/opt/java/jdk/oracle/7u45/jre/lib/management-agent.jar:/home/roman/.local/opt/java/jdk/oracle/7u45/jre/lib/deploy.jar:/home/roman/.local/opt/java/jdk/oracle/7u45/jre/lib/alt-rt.jar:/home/roman/.local/opt/java/jdk/oracle/7u45/jre/lib/charsets.jar"

    ##################
    # JavaFX Tools   #
    # * ScenicView   #
    # * SceneBuilder #
    ##################

    set PATH $PATH $LFIX/opt/JavaFXSceneBuilder2.0
    set PATH $PATH $LFIX/opt/ScenicView/

    #########
    # Maven #
    #########

    set M2_HOME     $LFIX/opt/apache-maven-3.1.1
    set MAVEN_HOME  $M2_HOME
    set MVN_HOME    $M2_HOME
    set PATH        $PATH $M2_HOME/bin

    #######
    # Ant #
    #######

    set ANT_HOME    $LFIX/opt/apache-ant
    set PATH $PATH  $ANT_HOME/bin

    ##########
    # Gradle #
    ##########

    set GRADLE_HOME $LFIX/opt/gradle-2.3
    set PATH $PATH $GRADLE_HOME/bin
    
    #######
    # SBT #
    #######

    set PATH $PATH /home/roman/.local/opt/sbt/bin

    #################
    # Android Tools #
    #################

    set PATH $PATH $LFIX/opt/androidtools/bin
    set PATH $PATH $LFIX/opt/android-sdk/sdk/platform-tools
    set PATH $PATH $LFIX/opt/smali/scripts
    set PATH $PATH $LFIX/opt/dare-1.1.0-linux

    ###########
    # Binwalk #
    ###########

    set PATH $PATH $LFIX/opt/linux-memory-dumper # It complements well
    set PATH $PATH $LFIX/opt/binwalk/bin

    ############
    # Vivisect #
    ############

    set -gx VFB_EXT_PATH $HOME/.local/opt/vivisect/vdb/ext
    set PATH $PATH $LFIX/opt/vivisect

    ########
    # Idea #
    ########

    set IDEA_JDK $JDK_HOME

    set PATH $PATH $LFIX/opt/idea-IU-139.659.2/bin

    #########
    # Rtest #
    #########

    set PATH $PATH /home/roman/.local/opt/rtest/lib

    #########
    # CLion #
    #########

    set PATH $PATH $LFIX/opt/clion-140.2310.6/bin

    ##################
    # Android Studio #
    ##################

    set PATH $PATH $LFIX/opt/android-studio/bin

    ########
    # Atom #
    ########
  
    set PATH $PATH $LFIX/opt/Atom

    ##############
    # LightTable #
    ##############

    set PATH $PATH $LFIX/opt/LightTable

    ############
    # Brackets #
    ############

    set PATH $PATH $LFIX/opt/brackets/shell

    ############
    # Netbeans #
    ############

    set PATH $PATH $LFIX/opt/netbeans/bin

    ###########
    # Node.js #
    ###########

    set PATH $PATH $LFIX/opt/nodejs/bin
    set PATH $PATH $LFIX/opt/nodejs/bin/node_modules/bower/node_modules/.bin

    #############
    # WkhtmlToX #
    #############

    set PATH $PATH $LFIX/opt/wkhtmltox/bin

    ########
    # IGCC #
    ########

    set PATH $PATH $LFIX/opt/igcc-0.2

    ###################
    # Heroku Toolbelt #
    ###################

    #set PATH $PATH $LFIX/opt/heroku-client/bin
    set PATH $PATH /usr/local/heroku/bin

    ##################
    # Pomodoro Timer #
    ##################

    set PATH $PATH $LFIX/opt/tomighty-0.7.1/

    ####################################
    # Visual Understanding Environment #
    ####################################

    set PATH $PATH $LFIX/opt/vue/
    
    #######
    # YEd #
    #######

    set PATH $PATH $LFIX/opt/yed/bin
    
    ########################
    # Maltego XOR Casefile #
    ########################

    #set PATH $PATH $LFIX/opt/casefile-3.0/bin
    set PATH $PATH $LFIX/opt/maltego-3.4/bin

    #######
    # Tox #
    #######

    #set PATH $PATH $LFIX/opt/ToxQT/bin
    #set PATH $PATH $LFIX/opt/venom-git/bin

    #############
    # Minecraft #
    #############

    set PATH $PATH $LFIX/opt/minecraft
    set PATH $PATH $LFIX/opt/tekkit/

    ##########
    # jIRCii #
    ##########

    set PATH $PATH $LFIX/opt/jIRCii/bin
    
    #####################
    # GoAccess Web Logs #
    #####################

    set PATH $PATH $LFIX/opt/goaccess-0.7/bin

    #######
    # Tor #
    #######

    set PATH $PATH $LFIX/opt/tor-0.2.4.20/bin
    set PATH $PATH $LFIX/opt/vidalia/bin

    ############
    # Viewnior #
    ############

    set PATH $PATH $LFIX/opt/viewnior-1.3/bin

    #########
    # dMenu #
    #########

    set PATH $PATH $LFIX/opt/dmenu-4.5/bin
    
    #########
    # Scons #
    #########

    set PATH $PATH $LFIX/opt/scons-2.3.0/bin
    
    ###############
    # Passpartout #
    ###############

    #set PATH $PATH $LFIX/opt/passpartout0.7.1/bin

    #####################
    # XWinWrap (Shantz) #
    #####################

    set PATH $PATH $LFIX/opt/xwinwrap

    #######################
    # Transmission Remote #
    #######################

    set PATH $PATH $LFIX/opt/transgui

    ############
    # Singular #
    ############

    set PATH $PATH $LFIX/opt/singular/bin

    ###################
    # John The Ripper #
    ###################

    set -gx JOHN $LFIX/opt/john/run
    set PATH $PATH $LFIX/opt/john/run

    #################################
    # Yet Another Factoring Utility #
    #################################

    ####################
    # dotfiles manager #
    ####################

    set PATH $PATH $LFIX/opt/dotfiles-framework

###################
# Local Libraries #
###################

    ############
    # PFSTools #
    ############

    set -gx LD_LIBRARY_PATH $LD_LIBRARY_PATH /home/roman/.local/opt/pfstools-1.8.5/lib

    #########
    # Speex #
    #########

    set -gx LD_LIBRARY_PATH $LD_LIBRARY_PATH /home/roman/.local/opt/speex-1.2rc1/lib

    ##########
    # zeroMQ #
    ##########

    set -gx LD_LIBRARY_PATH $LD_LIBRARY_PATH /home/roman/.local/opt/zmq/lib

#######
# RVM #
#######

#set GEM_HOME /home/roman/.local/lib/gem
#set rvmsudo_secure_path 0

    ################
    # Current Ruby #
    ################

    #set PATH $PATH $HOME/.rvm/rubies/default

##########
# System #
##########

    ##################
    # FUCK YEAH DOOM #
    ##################

    set -gx DOOMWADPATH $LFIX/var/doom/wads
    set PATH $PATH /usr/games

    set PATH $PATH $LFIX/opt/snowberry/bin
    
    ####################################################################
    # Add system binaries to path last for overrides (firefox, etc...) #
    ####################################################################

    set PATH  $PATH /bin /usr/bin /usr/local/bin

    ################
    # FUCK OPENJDK #
    ################

    set PATH  $PATH $JAVA_HOME/bin

###########
# Finally #
###########
    
    ###############################
    # Globally export binary path #
    ###############################

    set -gx PATH $PATH
    
    ###########################
    # Globally export ld path #
    ###########################

    set -gx LD_LIBRARY_PATH $LD_LIBRARY_PATH


##############
# Oh My Fish #
##############

set fish_path $HOME/.oh-my-fish

    ##########
    # Config #
    ##########

    set fish_theme agnoster

    set fish_plugins git\
					pathogen\
				   	dpaste\
				   	xdg\
				   	better-alias\
				   	gi\
				   	mc\
				   	replace\
				   	tab\
				   	tmux\
				   	tiny\
				   	extract\
				   	theme\
				   	rvm

    #set fish_custom $HOME/dotfiles/oh-my-fish

	set dpaste_site 'sprunge.us'

	####################
	# Pathogen Manager #
	####################

	set -gx PATHOGEN_BUNDLES $HOME/.nvim/bundle
	set -gx PATHOGEN_BUNDLES_DISABLED $PATHOGEN_BUNDLES.available

source $fish_path/oh-my-fish.fish

##################################################
