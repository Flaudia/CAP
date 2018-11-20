#!/usr/bin/env python
# coding: utf-8
import os
import subprocess
from os.path import isfile, join, dirname, exists, realpath, normpath, isdir

local_path = dirname(realpath(__file__))

times_path = local_path + "/times_txt"

madagascar_total_success = 0
probe_total_success = 0
clingo_total_success = 0

print times_path
for subdir, dirs, files in os.walk(times_path):
    for file in files:
        file_name = file.replace("time_","")
        file_name = file_name.replace(".txt","")
        print file_name
        time_file = open(times_path + "/" + file,"r")
        
        madagascar_actions = []
        madagascar_times = []
        probe_actions = []
        probe_times = []
        clingo_actions = []
        clingo_times = []

        for line in time_file:
            line = line.split()
            madagascar_data = line[0].split(",")
            probe_data = line[1].split(",")
            clingo_data = line[2].split(",")

            print madagascar_data
            
            madagascar_actions.append(madagascar_data[2])
            madagascar_times.append(madagascar_data[1])
            madagascar_rateo = 10 - madagascar_actions.count(0)
            madagascar_avg_act = reduce(lambda x, y: x + y, map(int,madagascar_actions)) / len(madagascar_actions) 
            madagascar_avg_times = reduce(lambda x, y: x + y, map(float,madagascar_times)) / len(madagascar_times) 

            probe_actions.append(probe_data[2])
            probe_times.append(probe_data[1])
            probe_rateo = 10 - probe_actions.count(0)
            probe_avg_act = reduce(lambda x, y: x + y, map(int,probe_actions)) / len(probe_actions) 
            probe_avg_times = reduce(lambda x, y: x + y, map(float,probe_times)) / len(probe_times) 

            clingo_actions.append(clingo_data[2])
            clingo_times.append(clingo_data[1])
            clingo_rateo = 10 - clingo_actions.count(0)
            clingo_avg_act = reduce(lambda x, y: x + y, map(int,clingo_actions)) / len(clingo_actions) 
            clingo_avg_times = reduce(lambda x, y: x + y, map(float,clingo_times)) / len(clingo_times) 

        madagascar_data[:] = []
        probe_data[:] = []
        clingo_data[:] = []

        print madagascar_actions

        output_file = open(local_path + "LOG.txt","a")
        output_file.write("/t/t Madagascar /t Probe /t Clingo /n")
        output_file.write("Experiment /t" + file_name + "/t" + file_name + "/t" + file_name + "/n")
        output_file.write("Success rateo /t" + str(madagascar_rateo) + "\10/t" + str(probe_rateo) + "\10/t" + str(clingo_rateo) + "\10/n")
        output_file.write("Min actions /t" + min(madagascar_actions) + "/t" + min(probe_actions) + "/t" + min(clingo_actions) + "/n")
        output_file.write("Max Actions /t" + max(madagascar_actions) + "/t" + max(probe_actions) + "/t" + max(clingo_actions) + "/n")
        output_file.write("Average act. /t" + str(madagascar_avg_act) + "/t" + str(probe_avg_act) + "/t" + str(clingo_avg_act) + "/n")
        output_file.write("Min time /t" + min(madagascar_times) + "/t" + min(probe_times) + "/t" + min(clingo_times) + "/n")
        output_file.write("Max time /t" + max(madagascar_times) + "/t" + max(probe_times) + "/t" + max(clingo_times) + "/n")
        output_file.write("Average time /t" + str(madagascar_avg_times) + "/t" + str(probe_avg_times) + "/t" + str(clingo_avg_times) + "/n/n/n")

        output_file.close()

        madagascar_total_success = madagascar_total_success + madagascar_rateo
        probe_total_success = probe_total_success + probe_rateo
        clingo_total_success = clingo_total_success + clingo_rateo

output_file = open(local_path + "LOG.txt","a")
output_file.write("/t"+str(madagascar_total_success)+"/t"+str(probe_total_success)+"/t"+str(clingo_total_success))        