######################################################################
#<
#
# Function:
#      = p6_aws_codepipeline_pipeline_execution_get(pipeline_name, pipeline_execution_id)
#
# Arg(s):
#    pipeline_name - 
#    pipeline_execution_id - 
#
#
#>
######################################################################
p6_aws_codepipeline_pipeline_execution_get() {
    local pipeline_name="$1"
    local pipeline_execution_id="$2"
    shift 2

    p6_run_read_cmd aws codepipeline get-pipeline-execution --pipeline-name $pipeline_name --pipeline-execution-id $pipeline_execution_id "$@"
}