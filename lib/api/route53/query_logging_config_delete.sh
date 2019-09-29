######################################################################
#<
#
# Function:
#      = p6_aws_route53_query_logging_config_delete(id)
#
# Arg(s):
#    id - 
#
#
#>
######################################################################
p6_aws_route53_query_logging_config_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws route53 delete-query-logging-config --id $id "$@"
}