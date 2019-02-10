build:
	docker build -t arch-i3status .

run:
	docker run -it --rm arch-i3status /bin/bash
