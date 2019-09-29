######################################################################
#<
#
# Function:
#      = p6_aws_mq_user_create(broker_id, username)
#
# Arg(s):
#    broker_id - 
#    username - 
#
#
#>
######################################################################
p6_aws_mq_user_create() {
    local broker_id="$1"
    local username="$2"
    shift 2

    p6_run_write_cmd aws mq create-user --broker-id $broker_id --username $username "$@"
}