p6_aws_mq_user_update() {
    local broker_id="$1"
    local username="$2"
    shift 2

    p6_log_or_run aws mq update-user --broker-id $broker_id --username $username "$@"
}
