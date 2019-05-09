p6_aws_ssm_association_batch_create() {
    local entries="$1"
    shift 1

    p6_log_or_run aws ssm create-association-batch --entries $entries "$@"
}
