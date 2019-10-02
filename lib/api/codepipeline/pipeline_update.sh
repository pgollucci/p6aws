######################################################################
#<
#
# Function:
#	p6_aws_codepipeline_pipeline_update(pipeline)
#
#  Args:
#	pipeline - 
#
#>
######################################################################
p6_aws_codepipeline_pipeline_update() {
    local pipeline="$1"
    shift 1

    p6_run_write_cmd aws codepipeline update-pipeline --pipeline $pipeline "$@"
}