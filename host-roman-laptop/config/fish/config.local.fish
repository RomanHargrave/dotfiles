####################################
# Machine-local fish configuration #
# Sets up env-specific things like #
# local software				   #
####################################

plugadd pathogen
plugadd sprunge
plugadd rvm

####################
# Pathogen Manager #
####################

set -gx PATHOGEN_BUNDLES $HOME/.nvim/bundle
set -gx PATHOGEN_BUNDLES_DISABLED $PATHOGEN_BUNDLES.available

# Login-only
if functions -q padd
	
	set -gx PKG_CONFIG_PATH $PKG_CONFIG_PATH $LFIX/lib/pkgconfig
	ldadd $LFIX/lib

	# opt {{{ 

	##################
	# Wine Compholio #
	##################
	
	padd /opt/wine-compholio/bin

	############
	# Java SDK #
	############
	
	set -gx JDK_HOME	$LFIX/opt/java/jdk/oracle/8u40
	set -gx JAVA_HOME	$JDK_HOME

	padd $JAVA_HOME/bin

	##########
	# Groovy #
	##########
	
	set -gx GROOVY_HOME	$LFIX/opt/groovy-2.2.1/

	padd $GROOVY_HOME/bin

	######
	# Go #
	######
	
	set -gx GOROOT	$LFIX/opt/go
	set -gx GOPATH	$LFIX/share/go
	set -gx GOBIN	$GOROOT/bin

	padd $GOBIN
	
	##################
	# JavaFX         #
	# * ScenicView   #
	# * SceneBuilder #
	##################
	
	padd $LFIX/opt/JavaFXSceneBuilder2.0
	padd $LFIX/opt/ScenicView

	#########
	# Maven #
	#########
	
	set -gx M2_HOME		$LFIX/opt/apache-maven-3.1.1
	set -gx MAVEN_HOME	$M2_HOME
	set -gx MVN_HOME	$M2_HOME

	padd $M2_HOME/bin

	#######
	# Ant #
	#######
	
	set -gx	ANT_HOME	$LFIX/opt/apache-ant

	padd $ANT_HOME/bin

	##########
	# Gradle #
	##########
	
	set -gx GRADLE_HOME	$LFIX/opt/gradle-2.3
	
	padd $GRADLE_HOME/bin

	#################
	# Android Tools #
	#################
	
	padd $LFIX/opt/android-sdk/sdk/platform-tools
	padd $LFIX/opt/smali/scripts
	
	############
	# Vivisect #
	############
	
	set -gx VFB_EXT_PATH	$LFIX/opt/vivisect/vdb/ext

	padd $LFIX/opt/vivisect

	#########
	# RTest #
	#########
	
	padd $LFIX/opt/rtest/lib
	
	############
	# Brackets #
	############
	
	padd $LFIX/opt/brackets/shell

	###########
	# Node.JS #
	###########
	
	set -gx NODE_HOME	$LFIX/opt/nodejs

	padd $NODE_HOME/bin
	padd $NODE_HOME/bin/node_modules/bower/node_modules/.bin	# wut
	
	##########
	# Heroku #
	##########
	
	padd /usr/local/heroku/bin
	
    ###################
    # John The Ripper #
    ###################

    set -gx JOHN $LFIX/opt/john/run
    set PATH $PATH $LFIX/opt/john/run

    # }}}	

	#############################################################################################################

	# lib {{{

	###################
	# Local Libraries #
	###################
	
	# ldadd $LFIX/opt/pfstools-1.8.5/lib
	# ldadd $LFIX/opt/speex-1.2rc1/lib
	# ldadd $LFIX/opt/zmq/lib

	# }}}

	#############################################################################################################
	
	# software {{{
	
	########
	# DOOM #
	########
	
	set -gx DOOMWADPATH	$LFIX/var/doom/wads

	padd $LFIX/opt/snowberry/bin

	# }}}

end	
