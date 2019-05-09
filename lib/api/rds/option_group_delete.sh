p6_aws_rds_option_group_delete() {
    local option_group_name="$1"
    shift 1

    p6_log_or_run aws rds delete-option-group --option-group-name $option_group_name "$@"
}
