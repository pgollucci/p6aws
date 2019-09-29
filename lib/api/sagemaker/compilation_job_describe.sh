######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_compilation_job_describe(compilation_job_name)
#
# Arg(s):
#    compilation_job_name - 
#
#
#>
######################################################################
p6_aws_sagemaker_compilation_job_describe() {
    local compilation_job_name="$1"
    shift 1

    p6_run_read_cmd aws sagemaker describe-compilation-job --compilation-job-name $compilation_job_name "$@"
}