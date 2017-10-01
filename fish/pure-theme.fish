###########################################
# Copyright (c) 2014 Jonathan Barronville #
# Minor tweaks by Richard North           #
# License: MIT.                           #
###########################################

function fish_prompt
	set last_command_status $status

	echo ''

	set_color green
	echo -n (echo $PWD | sed 's|^'$HOME'\(.*\)$|~\1|')
	set_color normal

	set git_directory (git rev-parse --git-dir ^/dev/null)

	if test $status = 0
		echo -n ' '
		set_color 777
		set git_branch (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')

		if test $status = 0
			echo -n 'git$'$git_branch
		else
			echo -n 'git$%unknown%'
		end

		set -e git_branch
		set_color normal

		git diff --ignore-submodules --quiet HEAD

		if test $status = 1
			set_color cyan
			echo -n '*'
			set_color normal
		end

		if test $git_directory != '.git'
			set_color 444
			echo -n '['
			set_color 555
			echo -n (echo $git_directory | sed 's|^'$HOME'\(.*\)$|~\1|')/
			set_color 444
			echo -n ']'
			set_color normal
		end
	end

	set -e git_directory

	if test "$CMD_DURATION" != ""
		set_color yellow
		echo -n "  $CMD_DURATION"
	end

	echo ''

	if test $last_command_status = 0
		set_color green
	else
		set_color red
	end

	echo -n '❯'
	set_color normal

	echo -n ' '
end

function fish_right_prompt
	set_color white
	date '+%H:%M:%S'
	echo -n ' '
end
