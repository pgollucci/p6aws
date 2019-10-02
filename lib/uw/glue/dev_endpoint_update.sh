######################################################################
#<
#
# Function:
#	p6_aws_glue_etl_libraries(endpoint_name)
#
#  Args:
#	endpoint_name - 
#
#>
######################################################################
p6_aws_glue_etl_libraries() {
        local endpoint_name="$1"
        shift 1

    cond_log_and_run aws glue update-dev-endpoint --endpoint-name $endpoint_name --update-etl-libraries "$@"
}