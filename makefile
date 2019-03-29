all: 
	README.md

README.md:
	touch README.md
	echo "# The Unix Workbench Project - File Guessing Game\n" >README.md
	echo "## Peer-graded Assignment: Bash, Make, Git, and GitHub\n" >>README.md
	echo "## Date and Time make was run -" $$(date) >>README.md
	echo "\n" >>README.md
	echo "Number of lines of code -"  $$(wc -l guessinggame.sh | egrep -o "[0-9]+") >>README.md

clean:
	rm README.md
