
GO=$(shell which go)

# silent commands with @
create1: clean
	@echo "creating folder <folder>"
	@if [ ! -d folder ] ; then mkdir folder ; fi

create2: clean
	@echo "creating folder <folder>"
	if [ ! -d folder ] ; then mkdir folder ; fi

clean: 
	@echo "cleaning..."
	@if [ -d folder ] ; then rm -fR folder; fi

go:
	@echo "The path to go is:" 
	@echo $(GO)
