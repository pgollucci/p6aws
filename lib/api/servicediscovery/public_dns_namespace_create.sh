######################################################################
#<
#
# Function:
#      = p6_aws_servicediscovery_public_dns_namespace_create(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_servicediscovery_public_dns_namespace_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws servicediscovery create-public-dns-namespace --name $name "$@"
}