######################################################################
#<
#
# Function:
#      = p6_aws_elastictranscoder_job_cancel(id)
#
# Arg(s):
#    id - 
#
#
#>
######################################################################
p6_aws_elastictranscoder_job_cancel() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws elastictranscoder cancel-job --id $id "$@"
}