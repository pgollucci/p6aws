######################################################################
#<
#
# Function:
#	p6_aws_elastictranscoder_job_create(pipeline_id)
#
#  Args:
#	pipeline_id - 
#
#>
######################################################################
p6_aws_elastictranscoder_job_create() {
    local pipeline_id="$1"
    shift 1

    p6_run_write_cmd aws elastictranscoder create-job --pipeline-id $pipeline_id "$@"
}