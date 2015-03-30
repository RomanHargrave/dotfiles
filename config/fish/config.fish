# helpers {{{

function padd
	for spec in $argv
		if not contains $spec $PATH
			set -gx PATH $spec $PATH
		end
	end
end

function ldadd
	set -lx IFS :
	for spec in $argv
		if not contains $spec $LD_LIBRARY_PATH
			set -gx LD_LIBRARY_PATH $LD_LIBRARY_PATH $spec
		end
	end
end

function --no-scope-shadowing  plugadd
	for plugin in $argv
		if not contains $plugin $fish_plugins
			set fish_plugins $fish_plugins $plugin
		end
	end
end

function warn
	if isatty
		echo $argv
	end
end

# }}}

##########################
# Initialize Environment #
##########################

if which vimpager > /dev/null
	set -gx PAGER vimpager
end

set -gx LFIX $HOME/.local

set -gx QT_STYLE_OVERRIDE gtk
set -gx TERM "xterm-256color"

set -gx RCRC ~/.config/rcm/rcmrc

################################
# Fish configuration locations #
################################

set -g FISH_CPATH	(status -f)
set -g FISH_HOME	(dirname $FISH_CPATH)
set -g FISH_LCONF	$FISH_HOME/config.local.fish
set -g FISH_OMF		$HOME/.oh-my-fish

ldadd /usr/local/lib

##################
# Local Software #
##################

begin # {{{

	#############
    # Local Bin #
    #############
	
    padd $HOME/bin
	padd $LFIX/bin
    padd $LFIX/usr/bin

	######################################
	# Auto-locate /opt/ - style software #
	######################################
	
	if test -d $LFIX/opt
		
		for folder in (ls -d $LFIX/opt/*/{bin,usr/{bin,local/bin}})
			padd (realpath $folder)
		end

		#########################################################################
		# Also add things in /opt/ that are organized in a non-posix root style #
		#########################################################################
		
		for folder in (dirname (realpath (find $LFIX/opt/* -maxdepth 1 -type f -executable)) | uniq)
			# fscking find
			if [ "x$folder" != "x$LFIX/opt" ]
				padd $folder
			end
		end
	end

end # }}} 

#################################
# Load local fish configuraiton #
#################################

if test -f $FISH_LCONF
	source $FISH_LCONF
end

#############################################################################
# After local config is allowed to do it's thing, add system bin dirs last  #
# in order to allow overriding of system software by the user               #
#############################################################################

padd /bin /usr/local/bin /usr/bin /usr/games

# Add /sbin for network tools

padd /sbin /usr/sbin /usr/local/sbin

###################################################
# Oh My Fish:									  #
# Probe for OMF folder, perform setup if present  #
###################################################

if begin; [ "x$FISH_OMF" != "x" ]; and test -d $FISH_OMF; and status -i; end # {{{
	
	set fish_path $FISH_OMF

	##########
	# Config #
	##########

	set fish_theme agnoster

	plugadd dpaste\
			sprunge\
			xdg\
			better-alias\
			gi\
			mc\
			replace\
			tmux\
			tiny\
			extract

	set dpaste_site 'sprunge.us'
	
	source $fish_path/oh-my-fish.fish

	set -eg fish_plugins
end # }}}

# Delete helpers
functions -e padd ldadd plugadd
