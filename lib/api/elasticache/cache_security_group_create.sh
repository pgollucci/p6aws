######################################################################
#<
#
# Function:
#      = p6_aws_elasticache_cache_security_group_create(cache_security_group_name, description)
#
# Arg(s):
#    cache_security_group_name - 
#    description - 
#
#
#>
######################################################################
p6_aws_elasticache_cache_security_group_create() {
    local cache_security_group_name="$1"
    local description="$2"
    shift 2

    p6_run_write_cmd aws elasticache create-cache-security-group --cache-security-group-name $cache_security_group_name --description $description "$@"
}