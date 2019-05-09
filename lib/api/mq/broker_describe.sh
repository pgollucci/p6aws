p6_aws_mq_broker_describe() {
    local broker_id="$1"
    shift 1

    p6_log_and_run aws mq describe-broker --broker-id $broker_id "$@"
}
