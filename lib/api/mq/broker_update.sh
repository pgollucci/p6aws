p6_aws_mq_broker_update() {
    local broker_id="$1"
    shift 1

    p6_log_or_run aws mq update-broker --broker-id $broker_id "$@"
}
