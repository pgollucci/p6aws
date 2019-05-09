p6_aws_ds_sso_disable() {
    local directory_id="$1"
    shift 1

    p6_log_or_run aws ds disable-sso --directory-id $directory_id "$@"
}
