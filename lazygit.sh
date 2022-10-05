lazygit() {
	# using it like this to find the project's .gitignore even if you are in a subdirectory
	path=$(git rev-parse --show-toplevel) 
	path+="/.gitignore"

	if [ -f "$path" ]; then
		message=""
		for a in "$@"
		do
			message+="$a "
		done

		# Using git add . and the && here so that you can use it in a subdirectory to lazily add just one part of a project, and the && to make it stop if either command sends and error
		git add . --verbose && git commit -m "$message" && git push

	else
		echo "You are trying to use lazygit, but you have no .gitignore for this project"
	fi

}
