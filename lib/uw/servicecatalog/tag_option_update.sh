######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_active(product_id, provisioning_artifact_id, id)
#
#  Args:
#	product_id - 
#	provisioning_artifact_id - 
#	id - 
#
#>
######################################################################
p6_aws_servicecatalog_active() {
        local id="$1"
        shift 1

    cond_log_and_run aws servicecatalog update-tag-option --id $id --active "$@"
}