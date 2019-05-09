p6_aws_storagegateway_nfs_file_share_create() {
    local client_token="$1"
    local gateway_arn="$2"
    local role="$3"
    local location_arn="$4"
    shift 4

    p6_run_write_cmd aws storagegateway create-nfs-file-share --client-token $client_token --gateway-arn $gateway_arn --role $role --location-arn $location_arn "$@"
}
