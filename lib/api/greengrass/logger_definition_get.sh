######################################################################
#<
#
# Function:
#	p6_aws_greengrass_logger_definition_get(logger_definition_id)
#
#  Args:
#	logger_definition_id - 
#
#>
######################################################################
p6_aws_greengrass_logger_definition_get() {
    local logger_definition_id="$1"
    shift 1

    p6_run_read_cmd aws greengrass get-logger-definition --logger-definition-id $logger_definition_id "$@"
}