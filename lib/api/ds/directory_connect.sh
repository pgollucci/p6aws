p6_aws_ds_directory_connect() {
    local name="$1"
    local password="$2"
    local size="$3"
    local connect_settings="$4"
    shift 4

    p6_log_or_run aws ds connect-directory --name $name --password $password --size $size --connect-settings $connect_settings "$@"
}
