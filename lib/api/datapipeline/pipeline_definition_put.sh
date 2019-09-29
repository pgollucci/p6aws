######################################################################
#<
#
# Function:
#      = p6_aws_datapipeline_pipeline_definition_put(pipeline_id, pipeline_definition)
#
# Arg(s):
#    pipeline_id - 
#    pipeline_definition - 
#
#
#>
######################################################################
p6_aws_datapipeline_pipeline_definition_put() {
    local pipeline_id="$1"
    local pipeline_definition="$2"
    shift 2

    p6_run_write_cmd aws datapipeline put-pipeline-definition --pipeline-id $pipeline_id --pipeline-definition $pipeline_definition "$@"
}