p6_aws_servicecatalog_record_describe() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws servicecatalog describe-record --id $id "$@"
}
