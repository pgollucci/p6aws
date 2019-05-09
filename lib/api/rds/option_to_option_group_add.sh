p6_aws_rds_option_to_option_group_add() {
    local option_group_name="$1"
    shift 1

    p6_run_write_cmd aws rds add-option-to-option-group --option-group-name $option_group_name "$@"
}
