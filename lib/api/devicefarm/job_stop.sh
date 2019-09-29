######################################################################
#<
#
# Function:
#      = p6_aws_devicefarm_job_stop(arn)
#
# Arg(s):
#    arn - 
#
#
#>
######################################################################
p6_aws_devicefarm_job_stop() {
    local arn="$1"
    shift 1

    p6_run_write_cmd aws devicefarm stop-job --arn $arn "$@"
}