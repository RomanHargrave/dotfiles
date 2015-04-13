function log -a color -a message
	set timestamp (date +'[%H:%M:%S %Y-%m-%d]')
	begin
		isatty 2; and set_color $color
		echo "-- $timestamp $message"
		isatty 2; and set_color normal
	end 1>&2
end

function info
	log green "$argv"
end

function warn 
	log yellow "$argv"
end

function error
	log red "$argv"
end

function debug
	log cyan "$argv"
end
