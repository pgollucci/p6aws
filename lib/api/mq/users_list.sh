p6_aws_mq_users_list() {
    local broker_id="$1"
    shift 1

    p6_log_and_run aws mq list-users --broker-id $broker_id "$@"
}
