p6_aws_ds_domain_controllers_describe() {
    local directory_id="$1"
    shift 1

    p6_run_read_cmd aws ds describe-domain-controllers --directory-id $directory_id "$@"
}
