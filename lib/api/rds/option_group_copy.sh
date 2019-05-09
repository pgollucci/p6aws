p6_aws_rds_option_group_copy() {
    local source_option_group_identifier="$1"
    local target_option_group_identifier="$2"
    local target_option_group_description="$3"
    shift 3

    p6_run_write_cmd aws rds copy-option-group --source-option-group-identifier $source_option_group_identifier --target-option-group-identifier $target_option_group_identifier --target-option-group-description $target_option_group_description "$@"
}
