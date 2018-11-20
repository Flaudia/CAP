#!/usr/bin/env python
# coding: utf-8
import os
import subprocess
from os.path import isfile, join, dirname, exists, realpath, normpath, isdir

def deleteContent(pfile):
    pfile.seek(0)
    pfile.truncate()

def count(sequence, item):
	cont=0
	for i in sequence:
    		if item==i:
        		cont+=1
	return cont


local_path = dirname(realpath(__file__))

#times


times_clingo_path = local_path + "/ASP/clingo/times/total"

#actions

actions_clingo_path = local_path + "/ASP/clingo/solutions"


output_files_path = local_path + "/times_output"


if not os.path.exists(output_files_path):
	os.makedirs(output_files_path) 

if not os.path.exists(output_files_path + "/reordered"):
	os.makedirs(output_files_path + "/reordered") 

	

for subdir, dirs, files in os.walk(times_clingo_path):

	print "**********CHANGING FOLDER**********\n"
	folder_name = (subdir.split("/"))[-1]

	output_files_name = "time_"+folder_name

	output_file = open(output_files_path + "/" + output_files_name + ".txt" ,"a")

	deleteContent(output_file)

	for file in files:

		file_name = str(file)	
		
		file_action_name = file_name.replace("time_","")
		file_action_name = file_action_name.replace(".txt","")


		clingo_actions_file_flag = True	

		#CLINGO
		try:
			print "OPENING FILE: " + actions_clingo_path + "/" + folder_name + "/" + file_action_name + "\n"
			clingo_file = open(actions_clingo_path + "/" + folder_name + "/" + file_action_name ,"r")
			clingo_num_lines = sum(1 for line in open(actions_clingo_path + "/" + folder_name + "/" + file_action_name))

		except IOError, Exception:
			print "FAILED TO OPEN FILE : " + actions_clingo_path + "/" + folder_name + "/" + file_action_name + "\n"
			clingo_actions_file_flag = False

		#CLINGO
		print "CLINGO NUM LINES " + str(clingo_num_lines)
		if clingo_actions_file_flag == True: 
			clingo_action = 0
			for line in clingo_file:
				if line == "UNSATISFIABLE":
					clingo_action = "-1"
				elif line == "UNKNOWN":
					clingo_action = "-1"
				elif clingo_num_lines < 4:
					print "NUM lINES " + str(clingo_num_lines) 
					clingo_action = "-1"
				else:
					line = line.split()
					for i in line:
						if "changeAngle" in i:
							print str(clingo_action)
							clingo_action = clingo_action + 1
					
		else:
			print "FILE NOT OPENED\n"
			clingo_action = "-1"

		clingo_action = str(clingo_action)
		print "CLINGO: computed actions: " + clingo_action + "\n"

		clingo_times_file_flag = True
		
		#CLINGO
		try:	
			print "OPENING FILE: " + times_clingo_path + "/" + folder_name + "/" + file_action_name + ".asp" + "\n"
			clingo_file = open(times_clingo_path + "/" + folder_name + "/" + file_name ,"r")

		except IOError, Exception:
			print "FAILED TO OPEN FILE : " + times_clingo_path + "/" + folder_name + "/" + file_action_name + ".asp" + "\n"
			clingo_times_file_flag = False
		
		file_number = file_name.split("_")
		file_number = file_number[4].split(".")
		line_to_write = output_files_name + "_" +  file_number[0]

		print "WRITING OUTPUT FILE : " + output_files_name + "\n"

		#CLINGO
		if clingo_times_file_flag == True: 
			for line in clingo_file:
				line = line.split()
				if line[1] == "user:":
					time = line[2]
					output_file.write("clingo_"+line_to_write+","+str(time)+","+clingo_action+"\n")
				#else:
					#output_file.write("clingo_"+line_to_write+" - , "+clingo_action+"\n")
					#break
			clingo_file.close()
		else:
			output_file.write("clingo_"+line_to_write+",3600,"+clingo_action+"\n")
		print "\n#########CHANGING EXPERIMENT#########\n\n"
	
	output_file.close()

mad = []
probe = []
clingo = []
for subdir, dirs, files in os.walk(output_files_path):
	for file in files:
		if file.find("madagascar") == -1: 
			read_file = open(output_files_path + "/" + file, 'r')
			write_file = open(output_files_path + "/reordered/" + file, 'w')
			print "FILE: " + file
			for line in read_file:
				if line.find("madagascar") != -1:
					mad.append(line)
				elif line.find("probe") != -1:
					probe.append(line)
				elif line.find("clingo") != -1:
					clingo.append(line)
	
			if len(mad) > 0:
				mad.sort()
				mad.append(mad[1])
				mad.pop(1)

				for item in mad:
					write_file.write(item)

			if len(probe) > 0:
				probe.sort()
				probe.append(probe[1])
				probe.pop(1)

				for item in probe:
					write_file.write(item)

			if len(clingo) > 0:
				clingo.sort()
				clingo.append(clingo[1])
				clingo.pop(1)

				for item in clingo:
					write_file.write(item)
			
			mad = []
			probe = []
			clingo = []

			read_file.close()
			write_file.close()


