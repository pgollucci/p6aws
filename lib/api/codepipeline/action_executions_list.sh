######################################################################
#<
#
# Function:
#      = p6_aws_codepipeline_action_executions_list(pipeline_name)
#
# Arg(s):
#    pipeline_name - 
#
#
#>
######################################################################
p6_aws_codepipeline_action_executions_list() {
    local pipeline_name="$1"
    shift 1

    p6_run_read_cmd aws codepipeline list-action-executions --pipeline-name $pipeline_name "$@"
}