######################################################################
#<
#
# Function:
#	p6_aws_codepipeline_pipeline_get(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_codepipeline_pipeline_get() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws codepipeline get-pipeline --name $name "$@"
}