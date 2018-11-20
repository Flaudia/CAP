"""
This script call the Probe solver for each file in the "problem" folder
"""
#!/usr/bin/env python
# coding: utf-8
import os
from os.path import isfile, join, dirname, exists, realpath, normpath, isdir

local_path = dirname(realpath(__file__))

rootdir = local_path + '/PDDL/problems'

probe_path = local_path + "/PDDL/planners/probe/probe"

domain_path = local_path + "/PDDL/domains/domain.pddl"

def solution_name_generator(solution_name):
	solution_name = solution_name.replace("problem_simplified_","")
	solution_name = solution_name.replace("_d1","")
	solution_name = solution_name.replace(".pddl","")
	solution_name = "solution_"+solution_name
	return solution_name


for subdir, dirs, files in os.walk(rootdir):	

	print local_path
	
	folder_name = (subdir.split("/"))[-1]
	
	solutions_directory_path = local_path + "/PDDL/solutions/probe/"+folder_name

	times_directory_path = local_path + "/PDDL/times/total/probe/"+folder_name

	if not os.path.exists(solutions_directory_path):
		os.makedirs(solutions_directory_path)

	if not os.path.exists(times_directory_path):
		os.makedirs(times_directory_path)

	if os.listdir(solutions_directory_path) == []: 
		for file in files:

			problem_path = rootdir + "/" + folder_name +"/"+ file
	
			solution_name = solution_name_generator(os.path.basename(file))

			times_path = times_directory_path +"/time_" + solution_name +".txt"
		
			solution_path = solutions_directory_path +"/"+solution_name

			print "SOLVING: " + solution_name

			print "******  "+solution_path

			command = 'ulimit -t 3600; /usr/bin/time -f "%U %S" --output=' + times_path + " " + probe_path + " -d " + domain_path + " -i " + problem_path + " -o " + solution_path

			print command
			os.system(command)

			times_path = ""
