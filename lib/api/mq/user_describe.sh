p6_aws_mq_user_describe() {
    local broker_id="$1"
    local username="$2"
    shift 2

    p6_run_read_cmd aws mq describe-user --broker-id $broker_id --username $username "$@"
}
