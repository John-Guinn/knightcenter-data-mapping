# Here's where we'll put our Make commands
greeting:
	echo 'Hello World'
math:
	expr 2 + 2

directories:
	-mkdir data
	-mkdir tmp

downloads:
	curl "https://www.imf.org/external/datamapper/api/v1/PCPIPCH?periods=2023" -o tmp/inflation.json
	curl "https://www.imf.org/external/datamapper/api/v1/countries" -o tmp/countries.json

freshdata:
	node imf_to_csv.js

all: directories downloads freshdata



