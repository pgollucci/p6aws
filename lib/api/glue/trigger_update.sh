######################################################################
#<
#
# Function:
#	p6_aws_glue_trigger_update(name, trigger_update)
#
#  Args:
#	name - 
#	trigger_update - 
#
#>
######################################################################
p6_aws_glue_trigger_update() {
    local name="$1"
    local trigger_update="$2"
    shift 2

    p6_run_write_cmd aws glue update-trigger --name $name --trigger-update $trigger_update "$@"
}