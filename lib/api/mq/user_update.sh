######################################################################
#<
#
# Function:
#	p6_aws_mq_user_update(broker_id, username)
#
#  Args:
#	broker_id - 
#	username - 
#
#>
######################################################################
p6_aws_mq_user_update() {
    local broker_id="$1"
    local username="$2"
    shift 2

    p6_run_write_cmd aws mq update-user --broker-id $broker_id --username $username "$@"
}