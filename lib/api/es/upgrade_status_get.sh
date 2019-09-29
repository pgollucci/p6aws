######################################################################
#<
#
# Function:
#      = p6_aws_es_upgrade_status_get(domain_name)
#
# Arg(s):
#    domain_name - 
#
#
#>
######################################################################
p6_aws_es_upgrade_status_get() {
    local domain_name="$1"
    shift 1

    p6_run_read_cmd aws es get-upgrade-status --domain-name $domain_name "$@"
}