######################################################################
#<
#
# Function:
#	p6_aws_ssm_inventory_entries_list(instance_id, type_name)
#
#  Args:
#	instance_id - 
#	type_name - 
#
#>
######################################################################
p6_aws_ssm_inventory_entries_list() {
    local instance_id="$1"
    local type_name="$2"
    shift 2

    p6_run_read_cmd aws ssm list-inventory-entries --instance-id $instance_id --type-name $type_name "$@"
}