######################################################################
#<
#
# Function:
#      = p6_aws_redshift_reserved_node_exchange_offerings_get(reserved_node_id)
#
# Arg(s):
#    reserved_node_id - 
#
#
#>
######################################################################
p6_aws_redshift_reserved_node_exchange_offerings_get() {
    local reserved_node_id="$1"
    shift 1

    p6_run_read_cmd aws redshift get-reserved-node-exchange-offerings --reserved-node-id $reserved_node_id "$@"
}