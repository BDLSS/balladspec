Updates to the balladspec label and comment values were recorded in a Google spreadsheet at https://docs.google.com/spreadsheet/ccc?key=0AmBLwA9ch7-UdEMxZG9yOWRiVldsQXRDUjhEUEhEb1E#gid=0

The values needed to be inserted into the balladspec.rdf file. This was achieved by exporting the Google spreadsheet values as a csv file.

The file readcsv.py file transforms the csv file to an XML file, that is used as an input to an XSLT transformation of the balladspec.rdf file.

* balladspec.csv - exported file from Google doc
* balladspec.xml - output file from readcsv.py
* readcsv.py - reads csv file and outputs XML representation

The xml file is used as an input file by ../xslt/balladspec2csv.xslt





