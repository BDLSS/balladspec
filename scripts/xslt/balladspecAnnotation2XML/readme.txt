The files in this folder are involved in updating balladspec.rdf file with labels/comments recorded in the Google document https://docs.google.com/spreadsheet/ccc?key=0AmBLwA9ch7-UdEMxZG9yOWRiVldsQXRDUjhEUEhEb1E#gid=0

* balladspec.rdf - input file to be transformed
* balladspec.xml - updated label/comment values from Google doc (transformed to XML by .../balladspecAnnotation2XML/readcsv.py
* updateBallladspecAnnotations.xslt - transforms balladspec.rdf - output is updated balladspec.rdf file
* updatedBalladspec.rdf - the output of the transformation