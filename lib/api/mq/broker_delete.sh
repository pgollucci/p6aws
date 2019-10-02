######################################################################
#<
#
# Function:
#	p6_aws_mq_broker_delete(broker_id)
#
#  Args:
#	broker_id - 
#
#>
######################################################################
p6_aws_mq_broker_delete() {
    local broker_id="$1"
    shift 1

    p6_run_write_cmd aws mq delete-broker --broker-id $broker_id "$@"
}