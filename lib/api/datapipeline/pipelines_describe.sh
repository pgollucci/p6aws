######################################################################
#<
#
# Function:
#	p6_aws_datapipeline_pipelines_describe(pipeline_ids)
#
#  Args:
#	pipeline_ids - 
#
#>
######################################################################
p6_aws_datapipeline_pipelines_describe() {
    local pipeline_ids="$1"
    shift 1

    p6_run_read_cmd aws datapipeline describe-pipelines --pipeline-ids $pipeline_ids "$@"
}