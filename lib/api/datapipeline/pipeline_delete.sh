######################################################################
#<
#
# Function:
#      = p6_aws_datapipeline_pipeline_delete(pipeline_id)
#
# Arg(s):
#    pipeline_id - 
#
#
#>
######################################################################
p6_aws_datapipeline_pipeline_delete() {
    local pipeline_id="$1"
    shift 1

    p6_run_write_cmd aws datapipeline delete-pipeline --pipeline-id $pipeline_id "$@"
}