p6_aws_ds_sso_enable() {
    local directory_id="$1"
    shift 1

    p6_log_or_run aws ds enable-sso --directory-id $directory_id "$@"
}
