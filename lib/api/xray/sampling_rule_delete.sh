p6_aws_xray_sampling_rule_delete() {

    p6_log_or_run aws xray delete-sampling-rule "$@"
}
