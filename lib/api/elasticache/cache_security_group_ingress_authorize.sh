######################################################################
#<
#
# Function:
#      = p6_aws_elasticache_cache_security_group_ingress_authorize(cache_security_group_name, ec2_security_group_name, ec2_security_group_owner_id)
#
# Arg(s):
#    cache_security_group_name - 
#    ec2_security_group_name - 
#    ec2_security_group_owner_id - 
#
#
#>
######################################################################
p6_aws_elasticache_cache_security_group_ingress_authorize() {
    local cache_security_group_name="$1"
    local ec2_security_group_name="$2"
    local ec2_security_group_owner_id="$3"
    shift 3

    p6_run_write_cmd aws elasticache authorize-cache-security-group-ingress --cache-security-group-name $cache_security_group_name --ec2-security-group-name $ec2_security_group_name --ec2-security-group-owner-id $ec2_security_group_owner_id "$@"
}