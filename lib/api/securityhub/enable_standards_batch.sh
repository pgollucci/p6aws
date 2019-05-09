p6_aws_securityhub_enable_standards_batch() {
    local standards_subscription_requests="$1"
    shift 1

    p6_log_or_run aws securityhub batch-enable-standards --standards-subscription-requests $standards_subscription_requests "$@"
}
