######################################################################
#<
#
# Function:
#	p6_aws_glue_trigger_delete(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_glue_trigger_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws glue delete-trigger --name $name "$@"
}