######################################################################
#<
#
# Function:
#	p6_aws_elasticbeanstalk_configuration_template_delete(application_name, template_name)
#
#  Args:
#	application_name - 
#	template_name - 
#
#>
######################################################################
p6_aws_elasticbeanstalk_configuration_template_delete() {
    local application_name="$1"
    local template_name="$2"
    shift 2

    p6_run_write_cmd aws elasticbeanstalk delete-configuration-template --application-name $application_name --template-name $template_name "$@"
}