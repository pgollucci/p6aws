p6_aws_servicecatalog_tag_option_update() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws servicecatalog update-tag-option --id $id "$@"
}
