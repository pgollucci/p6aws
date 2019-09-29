######################################################################
#<
#
# Function:
#      = p6_aws_codepipeline_pipeline_state_get(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_codepipeline_pipeline_state_get() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws codepipeline get-pipeline-state --name $name "$@"
}