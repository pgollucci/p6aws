######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_logger_definition_versions_list(logger_definition_id)
#
# Arg(s):
#    logger_definition_id - 
#
#
#>
######################################################################
p6_aws_greengrass_logger_definition_versions_list() {
    local logger_definition_id="$1"
    shift 1

    p6_run_read_cmd aws greengrass list-logger-definition-versions --logger-definition-id $logger_definition_id "$@"
}