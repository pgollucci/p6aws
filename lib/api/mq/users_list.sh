p6_aws_mq_users_list() {
    local broker_id="$1"
    shift 1

    p6_run_read_cmd aws mq list-users --broker-id $broker_id "$@"
}
