p6_aws_sns_subscriptions_list() {

    p6_run_read_cmd aws sns list-subscriptions "$@"
}
