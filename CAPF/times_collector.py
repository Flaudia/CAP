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

times_madagascar_path = local_path + "/PDDL/times/total/madagascar"

times_probe_path = local_path + "/PDDL/times/total/probe"

times_clingo_path = local_path + "/ASP/clingo/times/total"

#actions

actions_madagascar_path = local_path + "/PDDL/solutions/madagascar"

actions_probe_path = local_path + "/PDDL/solutions/probe"

actions_clingo_path = local_path + "/ASP/clingo/solutions"


output_files_path = local_path + "/times_output"


if not os.path.exists(output_files_path):
	os.makedirs(output_files_path) 

for subdir, dirs, files in os.walk(times_madagascar_path):
	print "**********CHANGING FOLDER**********\n"
	folder_name = (subdir.split("/"))[-1]

	output_files_name = "time_"+folder_name

	output_file = open(output_files_path + "/" + output_files_name + ".txt" ,"a")

	deleteContent(output_file)

	for file in files:

		file_name = str(file)	
		
		file_action_name = file_name.replace("time_","")
		file_action_name = file_action_name.replace(".txt","")

		probe_actions_file_flag = True
		
		madagascar_actions_file_flag = True

		clingo_actions_file_flag = True	
	
		#MADAGASCAR
		try:	
			print "OPENING FILE: " + actions_madagascar_path + "/" + folder_name + "/" + file_action_name + "\n"
			madagascar_actions_file = open(actions_madagascar_path + "/" + folder_name + "/" + file_action_name  ,"r")

		except IOError, Exception:
			print "FAILED TO OPEN FILE : " + actions_madagascar_path + "/" + folder_name + "/" + file_action_name + "\n"
			madagascar_actions_file_flag = False
	
		#PROBE
		try:	
			print "OPENING FILE: " + actions_probe_path + "/" + folder_name + "/" + file_action_name + ".1 \n"
			probe_actions_file = open(actions_probe_path + "/" + folder_name + "/" + file_action_name  + ".1","r")

		except IOError, Exception:
			print "FAILED TO OPEN FILE : " + actions_probe_path + "/" + folder_name + "/" + file_action_name + "\n"
			probe_actions_file_flag = False

		#CLINGO
		try:
			print "OPENING FILE: " + actions_clingo_path + "/" + folder_name + "/" + file_action_name + ".asp" + "\n"
			clingo_file = open(actions_clingo_path + "/" + folder_name + "/" + file_action_name + ".asp" ,"r")

		except IOError, Exception:
			print "FAILED TO OPEN FILE : " + actions_clingo_path + "/" + folder_name + "/" + file_action_name + ".asp" + "\n"
			clingo_actions_file_flag = False



		#MADAGASCAR
		if madagascar_actions_file_flag == True: 
			lineList = madagascar_actions_file.readlines()
			if len(lineList) != 0:
				line = lineList[-1]
				line = line.split()
				madagascar_action = str( int(line[1].replace(":","")) + 1)
				madagascar_actions_file.close()
			else:
				 madagascar_action = "0"
		else:
			madagascar_action = "0"

		#PROBE
		if probe_actions_file_flag == True: 
			probe_action = str(sum(1 for line in probe_actions_file))
			#probe_action = str( int(line[1].replace(":","")) + 1)
			probe_actions_file.close()
		else:
			probe_action = "0"

		#CLINGO
		if clingo_actions_file_flag == True: 
			clingo_action = 0
			for line in clingo_file:
				if line == "UNSATISFIABLE":
					clingo_action = "0"
				elif line == "UNKNOWN":
					clingo_action = "0"
				else:
					line = line.split()
					for i in line:
						if "changeAngle" in i:
							clingo_action = clingo_action + 1
					
		else:
			clingo_action = "-"

		clingo_action = str(clingo_action)
		print "MADAGASCAR: computed actions: " + madagascar_action + "\n"
		print "PROBE: computed actions: " + probe_action + "\n"
		print "CLINGO: computed actions: " + clingo_action + "\n"


		probe_times_file_flag = True
		
		madagascar_times_file_flag = True

		clingo_times_file_flag = True

		#MADAGASCAR
		try:	
			print "OPENING FILE: " + times_madagascar_path + "/" + folder_name + "/" + file_action_name + "\n"
			madagascar_file = open(times_madagascar_path + "/" + folder_name + "/" + file_name  ,"r")

		except IOError, Exception:
			print "FAILED TO OPEN FILE : " + times_madagascar_path + "/" + folder_name + "/" + file_action_name + "\n"
			madagascar_times_file_flag = False

		#PROBE
		try:	
			print "OPENING FILE: " + times_probe_path + "/" + folder_name + "/" + file_action_name + "\n"
			probe_file = open(times_probe_path + "/" + folder_name + "/" + file_name  ,"r")

		except IOError, Exception :
			print "FAILED TO OPEN FILE : " + times_probe_path + "/" + folder_name + "/" + file_action_name + "\n"
			probe_times_file_flag = False
		
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

		#MADAGASCAR
		if madagascar_times_file_flag == True: 
			for line in madagascar_file:
				times = line.split()
				if times[0] != "Command":
					times = float(times[0])+float(times[1])
					output_file.write("madagascar_"+line_to_write+","+str(times)+","+madagascar_action+"\t")	
				else:
					output_file.write("madagascar_"+line_to_write+",0,"+madagascar_action+"\t")
					break
			madagascar_file.close()	
		else:
			output_file.write("madagascar_"+line_to_write+",0,"+madagascar_action+"\t")

		#PROBE
		if probe_times_file_flag == True: 
			for line in probe_file:
				times = line.split()
				if times[0] != "Command":
					times = float(times[0])+float(times[1])
					output_file.write("probe_"+line_to_write+","+str(times)+","+probe_action+"\t")	
				else:
					output_file.write("probe_"+line_to_write+",0,"+probe_action+"\t")
					break
			probe_file.close()
		else:
			output_file.write("probe_"+line_to_write+",0,"+probe_action+"\t")

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
			output_file.write("clingo_"+line_to_write+",0,"+clingo_action+"\n")
		print "\n#########CHANGING EXPERIMENT#########\n\n"
	
	output_file.close()

