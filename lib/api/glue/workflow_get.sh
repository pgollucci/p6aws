######################################################################
#<
#
# Function:
#	p6_aws_glue_workflow_get(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_glue_workflow_get() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws glue get-workflow --name $name "$@"
}