#!/usr/bin/env python

from sys import argv, exit
from os import mkdir, errno

default_config = """#files configurations
output_dir:./PROJECT_NAME/results/
source_file:./src/PROJECT_NAME/PROJECT_NAME.cu
binary:./bin/PROJECT_NAME/PROJECT_NAME
template_file:./for_template.cu
measurement_target_file:./PROJECT_NAME/target.cu

# template filling parameters
measurement_tag:MEASUREMENT_TARGET
data_type_tag:DATA_TYPE
operand_type_tag:OPERAND_TYPE
constraint_letter_tag:CONSTRAINT_LETTER

# benchmark running parameters

min_threads:1
max_threads:1024

min_sm:1
max_sm:1

unroll_factor:1000
type:float,f32,f
number_of_operations:1000000
"""

project_tag = "PROJECT_NAME"

default_target = """asm volatile("mul.OPERAND_TYPE %0, %0, %1;" : "+CONSTRAINT_LETTER"(op_a) : "CONSTRAINT_LETTER"(op_b));
"""

if __name__ == "__main__":
    if len(argv) != 2:
        print("Missing benchmark name !")
        sys.exit()
    
    print "[+] Creating project directory structure..."
    try:
        mkdir("./" +argv[1])
        mkdir("./%s/src" % argv[1])
        mkdir("./%s/bin" % argv[1])
    except IOError:
        print "[!] Impossible to create project directory (do you have write access ?)"
        exit()
    except OSError, e:
        if e.errno == errno.EEXIST:
            print "[!] %s is already an existing directory, aborting." % argv[1]
            exit()
        else:
            raise e

    print "[+] Creating project configuration..."
    try:
        f_config = open("./%s/%s.config" % (argv[1], argv[1]), "w+")
        default_config = default_config.replace(project_tag, argv[1])
        f_config.write(default_config)
        f_config.close()
    except IOError:
        print "[!] Impossible to create project configuration (do you have write access ?)"
        exit()
    print "[+] Creating default target..."
    try:
        f_target = open("./%s/target.cu" % (argv[1]), "w+")
        f_target.write(default_target)
        f_target.close()
    except IOError:
        print "[!] Impossible to create project configuration (do you have write access ?)"
        exit()

    print "[+] Done."
