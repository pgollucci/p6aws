######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_compilation_job_stop(compilation_job_name)
#
# Arg(s):
#    compilation_job_name - 
#
#
#>
######################################################################
p6_aws_sagemaker_compilation_job_stop() {
    local compilation_job_name="$1"
    shift 1

    p6_run_write_cmd aws sagemaker stop-compilation-job --compilation-job-name $compilation_job_name "$@"
}