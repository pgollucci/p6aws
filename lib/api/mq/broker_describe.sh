######################################################################
#<
#
# Function:
#      = p6_aws_mq_broker_describe(broker_id)
#
# Arg(s):
#    broker_id - 
#
#
#>
######################################################################
p6_aws_mq_broker_describe() {
    local broker_id="$1"
    shift 1

    p6_run_read_cmd aws mq describe-broker --broker-id $broker_id "$@"
}