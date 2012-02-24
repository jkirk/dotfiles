if [[ -x /usr/bin/lesspipe.sh ]] ; then
	export LESSOPEN="|lesspipe.sh %s"
elif [[ -x /usr/bin/lesspipe ]] ; then
	export LESSOPEN="|lesspipe %s"
fi

