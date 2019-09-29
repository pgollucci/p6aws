######################################################################
#<
#
# Function:
#      = p6_aws_datapipeline_pipeline_definition_get(pipeline_id)
#
# Arg(s):
#    pipeline_id - 
#
#
#>
######################################################################
p6_aws_datapipeline_pipeline_definition_get() {
    local pipeline_id="$1"
    shift 1

    p6_run_read_cmd aws datapipeline get-pipeline-definition --pipeline-id $pipeline_id "$@"
}