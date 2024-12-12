# Makefile to generate README.md and automate the project setup

# Define variables
SCRIPT=guessinggame.sh
README=README.md

# The default target that makes the README.md
all: $(README)

# Rule to create the README.md file
$(README):
	@echo "Generating README.md..."
	@echo "# Guessing Game Project" > $(README)
	@echo "Date and Time: $(shell date)" >> $(README)
	@echo "Number of lines in guessinggame.sh: $(shell wc -l < $(SCRIPT))" >> $(README)
	@echo "Generated by makefile" >> $(README)

# Clean the generated files
clean:
	rm -f $(README)
