p6_aws_ecs_poll_endpoint_discover() {

    p6_log_or_run aws ecs discover-poll-endpoint "$@"
}
