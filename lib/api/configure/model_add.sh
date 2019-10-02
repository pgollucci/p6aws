######################################################################
#<
#
# Function:
#	p6_aws_configure_model_add(service_model)
#
#  Args:
#	service_model - 
#
#>
######################################################################
p6_aws_configure_model_add() {
    local service_model="$1"
    shift 1

    p6_run_write_cmd aws configure add-model --service-model $service_model "$@"
}