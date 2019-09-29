######################################################################
#<
#
# Function:
#      = p6_aws_servicediscovery_private_dns_namespace_create(name, vpc)
#
# Arg(s):
#    name - 
#    vpc - 
#
#
#>
######################################################################
p6_aws_servicediscovery_private_dns_namespace_create() {
    local name="$1"
    local vpc="$2"
    shift 2

    p6_run_write_cmd aws servicediscovery create-private-dns-namespace --name $name --vpc $vpc "$@"
}