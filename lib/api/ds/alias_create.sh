p6_aws_ds_alias_create() {
    local directory_id="$1"
    local alias="$2"
    shift 2

    p6_log_or_run aws ds create-alias --directory-id $directory_id --alias $alias "$@"
}
