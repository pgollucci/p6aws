p6_aws_securityhub_disable_standards_batch() {
    local standards_subscription_arns="$1"
    shift 1

    p6_log_or_run aws securityhub batch-disable-standards --standards-subscription-arns $standards_subscription_arns "$@"
}
