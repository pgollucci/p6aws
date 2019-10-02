######################################################################
#<
#
# Function:
#	p6_aws_elastictranscoder_jobs_by_pipeline_list(pipeline_id)
#
#  Args:
#	pipeline_id - 
#
#>
######################################################################
p6_aws_elastictranscoder_jobs_by_pipeline_list() {
    local pipeline_id="$1"
    shift 1

    p6_run_read_cmd aws elastictranscoder list-jobs-by-pipeline --pipeline-id $pipeline_id "$@"
}