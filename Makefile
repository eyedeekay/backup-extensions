
copy:
	cp $(HOME)/Downloads/*.xpi .

search.json.mozlz4:
	cat search.json.pre | aeson-pretty --compact > search.json
	python3 ./mozlz4a.py search.json search.json.mozlz4
