p6_aws_directconnect_lag_create() {
    local number_of_connections="$1"
    local location="$2"
    local connections_bandwidth="$3"
    local lag_name="$4"
    shift 4

    p6_run_write_cmd aws directconnect create-lag --number-of-connections $number_of_connections --location $location --connections-bandwidth $connections_bandwidth --lag-name $lag_name "$@"
}
