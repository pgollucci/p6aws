p6_aws_datasync_location_nfs_create() {
    local subdirectory="$1"
    local server_hostname="$2"
    local on_prem_config="$3"
    shift 3

    p6_run_write_cmd aws datasync create-location-nfs --subdirectory $subdirectory --server-hostname $server_hostname --on-prem-config $on_prem_config "$@"
}
