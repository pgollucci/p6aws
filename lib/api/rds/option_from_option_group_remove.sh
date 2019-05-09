p6_aws_rds_option_from_option_group_remove() {
    local option_group_name="$1"
    shift 1

    p6_log_or_run aws rds remove-option-from-option-group --option-group-name $option_group_name "$@"
}
