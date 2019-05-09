p6_aws_inspector_rules_packages_describe() {
    local rules_package_arns="$1"
    shift 1

    p6_run_read_cmd aws inspector describe-rules-packages --rules-package-arns $rules_package_arns "$@"
}
