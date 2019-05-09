p6_aws_storagegateway_domain_join() {
    local gateway_arn="$1"
    local domain_name="$2"
    local user_name="$3"
    local password="$4"
    shift 4

    p6_run_write_cmd aws storagegateway join-domain --gateway-arn $gateway_arn --domain-name $domain_name --user-name $user_name --password $password "$@"
}
