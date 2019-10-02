######################################################################
#<
#
# Function:
#	p6_aws_medialive_offering_purchase(count, offering_id)
#
#  Args:
#	count - 
#	offering_id - 
#
#>
######################################################################
p6_aws_medialive_offering_purchase() {
    local count="$1"
    local offering_id="$2"
    shift 2

    p6_run_write_cmd aws medialive purchase-offering --count $count --offering-id $offering_id "$@"
}