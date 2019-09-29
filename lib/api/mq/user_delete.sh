######################################################################
#<
#
# Function:
#      = p6_aws_mq_user_delete(broker_id, username)
#
# Arg(s):
#    broker_id - 
#    username - 
#
#
#>
######################################################################
p6_aws_mq_user_delete() {
    local broker_id="$1"
    local username="$2"
    shift 2

    p6_run_write_cmd aws mq delete-user --broker-id $broker_id --username $username "$@"
}