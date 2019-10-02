######################################################################
#<
#
# Function:
#	p6_aws_ec2_scheduled_instance_availability_describe(first_slot_start_time_range, recurrence)
#
#  Args:
#	first_slot_start_time_range - 
#	recurrence - 
#
#>
######################################################################
p6_aws_ec2_scheduled_instance_availability_describe() {
    local first_slot_start_time_range="$1"
    local recurrence="$2"
    shift 2

    p6_run_read_cmd aws ec2 describe-scheduled-instance-availability --first-slot-start-time-range $first_slot_start_time_range --recurrence $recurrence "$@"
}