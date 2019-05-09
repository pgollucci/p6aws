p6_aws_servicecatalog_tag_option_create() {
    local key="$1"
    local value="$2"
    shift 2

    p6_log_or_run aws servicecatalog create-tag-option --key $key --value $value "$@"
}
