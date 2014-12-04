#!/usr/bin/env python

DATA_TYPE = "int"
OPERAND_TYPE = "lo.u32"
CONSTRAINT_LETTER = "r"

def fill_template(config):
    f_out = open(config['source_file'], "w+")
    
    # files are automatically closed at the end of 'with' block
    template = ""
    with open(config['template_file'], "r") as template_file:
        template = template_file.read()
    
    measurement_target = ""
    with open(config['measurement_target_file'], "r") as meas_file:    
        measurement_target = meas_file.read()

    expanded_measurement_target = (measurement_target + "\n") * int(config['unroll_factor'])
    
    template = template.replace(config['measurement_tag'], expanded_measurement_target)
    template = template.replace(config['data_type_tag'], config['type'][0])
    template = template.replace(config['operand_type_tag'], config['type'][1])
    template = template.replace(config['constraint_letter_tag'], config['type'][2])
    
    f_out.write(template)
    f_out.close()
