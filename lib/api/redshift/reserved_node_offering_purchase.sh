######################################################################
#<
#
# Function:
#      = p6_aws_redshift_reserved_node_offering_purchase(reserved_node_offering_id)
#
# Arg(s):
#    reserved_node_offering_id - 
#
#
#>
######################################################################
p6_aws_redshift_reserved_node_offering_purchase() {
    local reserved_node_offering_id="$1"
    shift 1

    p6_run_write_cmd aws redshift purchase-reserved-node-offering --reserved-node-offering-id $reserved_node_offering_id "$@"
}