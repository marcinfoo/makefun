# evaluate call into variable
GO=$(shell which go)

# sample function
define print_nicely
	@echo "-------->$(1)<-----------"
endef


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

# call predefined function - arguments passed as $1, $2, etc.
print:
	@echo "Calling function..."
	$(call print_nicely,$(GO))

special-chars: clean go
	@echo "Called target $@"
	@echo "First prerequisite: $<"
	@echo "All prerequisites: $^"
