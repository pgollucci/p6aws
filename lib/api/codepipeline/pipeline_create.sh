######################################################################
#<
#
# Function:
#	p6_aws_codepipeline_pipeline_create(pipeline)
#
#  Args:
#	pipeline - 
#
#>
######################################################################
p6_aws_codepipeline_pipeline_create() {
    local pipeline="$1"
    shift 1

    p6_run_write_cmd aws codepipeline create-pipeline --pipeline $pipeline "$@"
}