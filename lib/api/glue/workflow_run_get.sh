######################################################################
#<
#
# Function:
#	p6_aws_glue_workflow_run_get(name, run_id)
#
#  Args:
#	name - 
#	run_id - 
#
#>
######################################################################
p6_aws_glue_workflow_run_get() {
    local name="$1"
    local run_id="$2"
    shift 2

    p6_run_read_cmd aws glue get-workflow-run --name $name --run-id $run_id "$@"
}