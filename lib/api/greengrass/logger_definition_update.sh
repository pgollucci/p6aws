######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_logger_definition_update(logger_definition_id)
#
# Arg(s):
#    logger_definition_id - 
#
#
#>
######################################################################
p6_aws_greengrass_logger_definition_update() {
    local logger_definition_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass update-logger-definition --logger-definition-id $logger_definition_id "$@"
}