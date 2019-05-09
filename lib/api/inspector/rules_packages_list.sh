p6_aws_inspector_rules_packages_list() {

    p6_log_and_run aws inspector list-rules-packages "$@"
}
