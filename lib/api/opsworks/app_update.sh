######################################################################
#<
#
# Function:
#	p6_aws_opsworks_app_update(app_id)
#
#  Args:
#	app_id - 
#
#>
######################################################################
p6_aws_opsworks_app_update() {
    local app_id="$1"
    shift 1

    p6_run_write_cmd aws opsworks update-app --app-id $app_id "$@"
}