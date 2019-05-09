p6_aws_ds_ip_routes_list() {
    local directory_id="$1"
    shift 1

    p6_run_read_cmd aws ds list-ip-routes --directory-id $directory_id "$@"
}
