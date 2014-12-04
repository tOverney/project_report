# Creating a new benchmark:
    * run ./new_benchmark benchmark_name
    * check that it uses the good template
    * change the target code

# Running a benchmark
    * run ./compile_and_get_data.py
    * wait for it...
    * get your results in benchmark_name/results/

# Configuration options
## files configurations

These options are controlling the input and ouptut files of the benchmark

output_dir:./PROJECT_NAME/results/, where the results are stored
source_file:./PROJECT_NAME/src/PROJECT_NAME.cu, the resulting source code
binary:./PROJECT_NAME/bin/PROJECT_NAME, the compiled benchmark
template_file:./for_template.cu, the base template in which target code is inserted
measurement_target_file:./PROJECT_NAME/target.cu, code that will be inserted and timed (plus the loop)

# template filling parameters
measurement_tag:MEASUREMENT_TARGET, tag to replace by the target in the template
data_type_tag:DATA_TYPE, tag to replace by operands data type
operand_type_tag:OPERAND_TYPE, tag to replace by operand type (.f32, .lo.u32, etc)
constraint_letter_tag:CONSTRAINT_LETTER, tag to replace by constraint in ptx assembly

# benchmark running parameters
# types are: individual, total
benchmark_type:total, total reports total running time, individual reports individual threads times in separate files

min_threads:1, minimum number of threads to run the benchmark on
max_threads:1024, maximum number of threads to run the benchmark on

min_sm:1, minimum number of sm to run the benchmark on
max_sm:1, maximum number of sm to run the benchmark on

unroll_factor:1000, how much operations are effectively unrolled in the loop body
type:float,f32,f; c type, ptx operand extension, constraint letter
number_of_operations:1000000, total number of times the target is executed

headers:\"starting\",\"ending\"; header of csv files
verbose:1, report the progress of the benchmark while it's running

