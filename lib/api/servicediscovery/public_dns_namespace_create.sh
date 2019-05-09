p6_aws_servicediscovery_public_dns_namespace_create() {
    local name="$1"
    shift 1

    p6_log_or_run aws servicediscovery create-public-dns-namespace --name $name "$@"
}
