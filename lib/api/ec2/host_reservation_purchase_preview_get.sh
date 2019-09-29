######################################################################
#<
#
# Function:
#      = p6_aws_ec2_host_reservation_purchase_preview_get(host_id_set, offering_id)
#
# Arg(s):
#    host_id_set - 
#    offering_id - 
#
#
#>
######################################################################
p6_aws_ec2_host_reservation_purchase_preview_get() {
    local host_id_set="$1"
    local offering_id="$2"
    shift 2

    p6_run_read_cmd aws ec2 get-host-reservation-purchase-preview --host-id-set $host_id_set --offering-id $offering_id "$@"
}