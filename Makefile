CC=g++
CFLAGS=-W -Wall
LDFLAGS=
EXEC=my_exe
INC=-I headers/

SRC= $(wildcard sources/*.cpp) 
OBJ= $(SRC:sources/%.cpp=objects/%.o)

all: $(EXEC)

my_exe :  $(OBJ)
	mkdir -p objects
	$(CC) $(CFLAGS) $(INC) $^ -o $@ 

objects/%.o : sources/%.cpp  
	$(CC) $(CFLAGS) $(INC) -c $< -o $@  

.PHONY: clean mrproper

clean: 
	rm -f objects/*.o core

mproper: clean
	rm -f $(EXEC)
	
## some internet site of interest
## https://prograide.com/pregunta/43942/comment-puis-je-creer-un-makefile-pour-des-projets-c-avec-des-sous-repertoires-src-objects-et-bin
## https://forums.futura-sciences.com/programmation-langages-algorithmique/508044-headers-sources-c.html
