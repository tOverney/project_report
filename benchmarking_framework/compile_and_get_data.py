#!/usr/bin/python
from sys import argv, exit
from subprocess import Popen, PIPE

from code_gen import fill_template
from data_gen import run_benchmark

def read_config(config_file):
    fd = open(config_file, "r")
    config = {}

    for line in fd:
        # skip comments and blank lines
        if line[0] == "#" or line == "\n": continue

        # split lines in format key:value
        (k, v) = line.rstrip("\n").split(":")
        if k == "type":
            v = v.split(",")
        config[k] = v

    fd.close()
    return config

#operand_parameters = {"float":["float", "f32", "f"],"int":["unsigned int","lo.u32","r"]}

if __name__ == "__main__":

    config = read_config(argv[1])

    #generate cuda code
    print "[+] Filling template"
    fill_template(config)
    
    #compile it
    print "[+] Compiling..."
    process = Popen(["nvcc", config['source_file'], "-o", config['binary'], "-m", "64", "-arch", "sm_20", "-D", "__STRICT_ANSI__"])
    process.wait()
    if(process.returncode != 0): 
        print "\n[!] Compilation error"
        exit()
    print "[+] Done"

    #launch it through gen_data script
    print "[+] Running benchmark"
    run_benchmark(config, verbose=True)
    print "[+] Benchmark done."
