# Makefile to simplify repetitive tasks

build:
	docker build -t alfaro96/tex .

pull:
	docker pull alfaro96/tex

# Run the container allocating a pseudo-TTY (terminal),
# binding mount the current directory as workspace and
# automatically removing the container when it exits
run:
	docker run -it \
			   -e FILE=$(FILE) \
			   -v $(PWD)/:/home/tex/workspace/ \
			   --rm alfaro96/tex
