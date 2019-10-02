######################################################################
#<
#
# Function:
#	p6_aws_ses_templated_email_send(source, destination, template, template_data)
#
#  Args:
#	source - 
#	destination - 
#	template - 
#	template_data - 
#
#>
######################################################################
p6_aws_ses_templated_email_send() {
    local source="$1"
    local destination="$2"
    local template="$3"
    local template_data="$4"
    shift 4

    p6_run_write_cmd aws ses send-templated-email --source $source --destination $destination --template $template --template-data $template_data "$@"
}