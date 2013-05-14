#!/usr/bin/python


import csv 
import sys
import xml.etree.cElementTree as ET

root = ET.Element("balladspec")



# file from script argument
fileLoc = sys.argv[1]

# get file contents
fileContents = csv.reader(open(fileLoc, 'r'))

dict = {};

for row in fileContents:
    id = row[1]
    label = row[2]
    comment = row[3]
    
    if (id.strip() != ''):
       # dict[id] = label + "|" + comment
       
        
        object = ET.SubElement(root, "object")
        id1 = ET.SubElement(object, "id")
        id1.text = id.decode("utf8")
        label1 = ET.SubElement(object, "label")
        label1.text = label.decode("utf8")
        comment1 = ET.SubElement(object, "comment")
        comment1.text = comment.decode("utf8")
        




tree = ET.ElementTree(root)
tree.write("balladspec.xml")



