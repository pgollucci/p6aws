######################################################################
#<
#
# Function:
#	p6_aws_codepipeline_pipeline_execution_start(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_codepipeline_pipeline_execution_start() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws codepipeline start-pipeline-execution --name $name "$@"
}