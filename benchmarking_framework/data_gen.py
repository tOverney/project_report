#!/usr/bin/env python
# -*- coding: utf-8 -*-

from subprocess import Popen, PIPE

from os import mkdir
from os.path import abspath

def run_benchmark(config, verbose=False):
    for grid_size in range(config['min_sm'], config['max_sm'] + 1):
        try:
            mkdir(abspath(config['output_dir']))
        except: 
            pass

        out_f = open("%s/times_%i_SM.dat"  % (config['output_dir'], grid_size), "w+")
        out_f.write("\"starting\",\"ending\"\n")

        for n_threads in range(config['min_threads'], config['max_threads'] + 1):
            if verbose: 
                print "    "+unichr(9500)+unichr(9472)+" %i threads, %i SMs" % (n_threads, grid_size)

            process = Popen([config['binary'],
                             str(n_threads),
                             str(config['number_of_operation']/config['unroll_factor']),
                             str(grid_size)], stdout=PIPE)

            # only values ouputed to stdout are relevant 
            # so only the first element of the tuple Popen.comunicate is relevant
            c_out = process.communicate()[0]
            
            # we create the table of tuple from stdout
            # it's better to iterate on items directly than iterating over
            # indice and getting elements in list from index
            t_times = []
            for el in c_out.split(" \n"):
                t_times.append(el.split())
            
            # we get the lowest and highest clktic present in the result table
            # and display statistics
            #list comprehensions allow to avoid for loops to extract list data

            min_clk = min([int(t[0]) for t in t_times])
            max_clk = max([int(t[1]) for t in t_times])

            out_f.write("%i,%i\n" % (min_clk, max_clk))
        out_f.close()
