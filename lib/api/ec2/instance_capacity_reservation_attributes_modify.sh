######################################################################
#<
#
# Function:
#      = p6_aws_ec2_instance_capacity_reservation_attributes_modify(instance_id, capacity_reservation_specification)
#
# Arg(s):
#    instance_id - 
#    capacity_reservation_specification - 
#
#
#>
######################################################################
p6_aws_ec2_instance_capacity_reservation_attributes_modify() {
    local instance_id="$1"
    local capacity_reservation_specification="$2"
    shift 2

    p6_run_write_cmd aws ec2 modify-instance-capacity-reservation-attributes --instance-id $instance_id --capacity-reservation-specification $capacity_reservation_specification "$@"
}