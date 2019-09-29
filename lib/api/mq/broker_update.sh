######################################################################
#<
#
# Function:
#      = p6_aws_mq_broker_update(broker_id)
#
# Arg(s):
#    broker_id - 
#
#
#>
######################################################################
p6_aws_mq_broker_update() {
    local broker_id="$1"
    shift 1

    p6_run_write_cmd aws mq update-broker --broker-id $broker_id "$@"
}