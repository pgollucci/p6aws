######################################################################
#<
#
# Function:
#	p6_aws_glue_workflow_run_start(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_glue_workflow_run_start() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws glue start-workflow-run --name $name "$@"
}