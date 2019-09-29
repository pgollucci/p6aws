p6_aws_mq_access() {
        local broker_id="$1"
        local username="$2"
        shift 2

    cond_log_and_run aws mq update-user --broker-id $broker_id --username $username --console-access "$@"
}

