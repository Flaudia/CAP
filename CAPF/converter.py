#!/usr/bin/env python
# coding: utf-8
import os
from os.path import isfile, join, dirname, exists, realpath, normpath, isdir

local_path = dirname(realpath(__file__))

rootdir = local_path + '/PDDL/problems'

joint_angles = []
granularity_angles = []

def data_name_generator(data_name):
	data_name = data_name.replace("problem_simplified_","")
	data_name = data_name.replace("_d1","")
	data_name = data_name.replace(".pddl","")
	data_name = data_name + ".asp"
	return data_name
	
def write_data_file(data_file_name):	
	data_file = open(data_file_name,"w")
	
	for i in range(0,len(granularity_angles)):
		data_file.write("angles("+granularity_angles[i]+").\n")
	data_file.write("#const granularity = "+granularity_angles[1]+" .\n")
	data_file.write("#const timemax = 1 .\n")
	data_file.write("time(0..timemax).\n")
	data_file.write("joint(1.."+str(len(joint_angles)/2)+").\n")
	for i in range(0,len(joint_angles)/2):
		data_file.write("hasAngle("+str(i+1)+","+joint_angles[i]+",0).\n")
	for i in range(1,(len(joint_angles)/2)):
		data_file.write("isLinked("+str(i)+","+str(i+1)+").\n")
	for i in range(0,len(joint_angles)/2):
		data_file.write(":- not hasAngle("+str(i+1)+","+joint_angles[i+3]+",timemax).\n")

	data_file.close()



for subdir, dirs, files in os.walk(rootdir):	
	
	folder_name = (subdir.split("/"))[-1]
	directory_path = local_path + "/ASP/clingo/data/"+folder_name
	print directory_path
	
	if not os.path.exists(directory_path):
		os.makedirs(directory_path)
		print "HERE -------------------------------"

	for file in files:
		#print os.path.join(subdir, file)

		problem_file = open(os.path.join(subdir, file),"r")
		for line in problem_file:
			if line.find("HasAngle") == -1:
				pass
			else:
				words = line.split()
				joint_angles.append(words[1].replace("angle",""))    				
				#print words[1]   
				#print joint_angles				
			
			if line.find("angle)") == -1:
				pass
			else:
				words = line.split()
				size = len(words) - 2
				for i in range(0,size):
					granularity_angles.append(words[i].replace("angle",""))    				

		problem_file.close()

		data_name = data_name_generator(os.path.basename(file))

		write_data_file(directory_path+"/"+data_name)

		del joint_angles[:]
		del granularity_angles[:]
