######################################################################
#<
#
# Function:
#	p6_aws_glue_workflow_update(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_glue_workflow_update() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws glue update-workflow --name $name "$@"
}