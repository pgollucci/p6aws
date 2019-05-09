p6_aws_ds_conditional_forwarders_describe() {
    local directory_id="$1"
    shift 1

    p6_run_read_cmd aws ds describe-conditional-forwarders --directory-id $directory_id "$@"
}
