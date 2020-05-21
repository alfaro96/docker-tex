# Makefile to simplify repetitive tasks

build:
	docker build -t alfaro96/tex .

pull:
	docker pull alfaro96/tex

run:
	docker run -it \
			   -e FILE=$(FILE) \
			   -v $(PWD)/:/home/tex/workspace/ \
			   --rm alfaro96/tex
