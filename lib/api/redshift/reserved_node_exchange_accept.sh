######################################################################
#<
#
# Function:
#	p6_aws_redshift_reserved_node_exchange_accept(reserved_node_id, target_reserved_node_offering_id)
#
#  Args:
#	reserved_node_id - 
#	target_reserved_node_offering_id - 
#
#>
######################################################################
p6_aws_redshift_reserved_node_exchange_accept() {
    local reserved_node_id="$1"
    local target_reserved_node_offering_id="$2"
    shift 2

    p6_run_write_cmd aws redshift accept-reserved-node-exchange --reserved-node-id $reserved_node_id --target-reserved-node-offering-id $target_reserved_node_offering_id "$@"
}